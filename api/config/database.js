const parse = require('pg-connection-string').parse;

const getDevConnections = env => ({
  default: {
    connector: 'bookshelf',
    settings: {
      client: 'sqlite',
      filename: env('DATABASE_FILENAME', '.tmp/data.db'),
    },
    options: {
      useNullAsDefault: true,
    },
  }
});

const getProductionConnections = env => {
  // Parse DATABASE_URL if available (Railway provides this)
  if (env('DATABASE_URL')) {
    const config = parse(env('DATABASE_URL'));
    return {
      default: {
        connector: "bookshelf",
        settings: {
          client: "postgres",
          host: config.host,
          port: config.port,
          database: config.database,
          username: config.user,
          password: config.password,
          ssl: {
            rejectUnauthorized: false
          },
        },
        options: {
          pool: {
            min: 0,
            max: 15,
            idleTimeoutMillis: 30000,
            createTimeoutMillis: 30000,
            acquireTimeoutMillis: 30000,
          },
        },
      }
    };
  }
  
  // Fallback to individual env variables
  return {
    default: {
      connector: "bookshelf",
      settings: {
        client: "postgres",
        host: env("DATABASE_HOST"),
        port: env.int("DATABASE_PORT", 5432),
        database: env("DATABASE_NAME"),
        username: env("DATABASE_USERNAME"),
        password: env("DATABASE_PASSWORD"),
        ssl: env.bool("DATABASE_SSL", false) ? {
          rejectUnauthorized: false
        } : false,
      },
      options: {
        pool: {
          min: 0,
          max: 15,
          idleTimeoutMillis: 30000,
          createTimeoutMillis: 30000,
          acquireTimeoutMillis: 30000,
        },
      },
    }
  };
};

module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: env('NODE_ENV') === 'development' ? getDevConnections(env) : getProductionConnections(env)
});
