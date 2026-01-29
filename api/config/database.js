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

const getProductionConnections = env => ({
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
});

module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: env('NODE_ENV') === 'development' ? getDevConnections(env) : getProductionConnections(env)
});
