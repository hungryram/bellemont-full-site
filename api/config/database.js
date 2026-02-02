module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: env('DATABASE_CLIENT', 'postgres'),
        host: env('DATABASE_HOST', 'postgres.railway.internal'),
        port: env.int('DATABASE_PORT', 5432),
        database: env('DATABASE_NAME', 'railway'),
        username: env('DATABASE_USERNAME', 'postgres'),
        password: env('DATABASE_PASSWORD'),
        ssl: env.bool('DATABASE_SSL', false) ? {
          rejectUnauthorized: env.bool('DATABASE_SSL_REJECT_UNAUTHORIZED', false)
        } : false,
      },
      options: {}
    },
  },
});
