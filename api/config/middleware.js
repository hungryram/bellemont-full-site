module.exports = ({ env }) => ({
  settings: {
    cors: {
      enabled: true,
      origin: [
        'http://localhost:8000',
        'http://localhost:3000',
        'https://the-bellemont.com',
        'https://www.the-bellemont.com',
        env('FRONTEND_URL', '*'), // Your Vercel URL
      ],
    },
  },
});
