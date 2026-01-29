module.exports = ({ env }) => ({
  host: env('HOST', '0.0.0.0'),
  port: env.int('PORT', 1337),
  url: env('PUBLIC_URL', 'https://bellemont-strapi-production.up.railway.app'),
  admin: {
    auth: {
      secret: env('ADMIN_JWT_SECRET', '86259beb5c75f35eaac8b5c693214a68'),
    },
  },
});
