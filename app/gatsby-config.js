const path = require(`path`);
module.exports = {
  siteMetadata: {
    siteUrl: "https://the-bellemont.com/",
    title: "The Bellemont - Upper East Side NYC 12 Luxury Condos For Sale | Central Park Penthouses",
    titleTemplate: "%s",
    description: "A boutique collection of luxury residences one block from Central Park developed by Naftali Group. Classic Architecture by Robert A.M. Stern Architects. Interiors by Achille Salvagni."
  },
  plugins: [
    'gatsby-plugin-react-helmet',
    'gatsby-plugin-styled-components',
    'gatsby-plugin-image',
    'gatsby-plugin-sitemap',
    'gatsby-transformer-remark',
    'gatsby-plugin-sharp',
    'gatsby-transformer-sharp',
    'gatsby-background-image',
    'gatsby-plugin-sass',
    {
      resolve: `gatsby-plugin-google-gtag`,
      options: {
        trackingIds: [
          "UA-208676802-1", // Google Analytics / GA
        ]
      }
    },
    // {
    //   resolve: "gatsby-plugin-google-tagmanager",
    //   options: {
    //     id: "GTM-5NBC6QQ",
    //   },
    // },
    {
      resolve: 'gatsby-plugin-robots-txt',
      options: {
        configFile: 'robots-txt.config.js'
      }
    },
    {
      resolve: `gatsby-plugin-canonical-urls`,
      options: {
        siteUrl: `https://the-bellemont.com/`,
      },
    },
    {
      resolve: 'gatsby-source-filesystem',
      options: {
        name: 'images',
        path: path.join(__dirname, `src`, `assets`, `images`),
      },
      __key: 'images',
    },
    {
      resolve: 'gatsby-source-filesystem',
      options: {
        name: 'pdf',
        path: path.join(__dirname, `src`, `assets`, `pdf`),
      },
    },
    {
      resolve: 'gatsby-source-filesystem',
      options: {
        name: 'pages',
        path: './src/assets/images',
      },
      __key: 'pages',
    },
    {
      resolve: `gatsby-plugin-sharp`,
      options: {
        stripMetadata: false,
        defaults: {
          formats: [`auto`],
          placeholder: `none`,
          quality: 85,
          breakpoints: [ 1660 ,1920, 2560],
          backgroundColor: `transparent`,
          jpgOptions: { chromaSubsampling: '4:4:4' },
          pngOptions: { chromaSubsampling: '4:4:4' },
        }
      }
    },
    {
      resolve: `gatsby-plugin-layout`,
      options: {
        component: require.resolve(`./src/components/layouts/index.tsx`),
      },
    },
    {
      resolve: "gatsby-plugin-manifest",
      options: {
        icon: "src/assets/icons/logo.png",
      },
    },
    {
      resolve: 'gatsby-source-strapi',
      options: {
        apiURL: 'https://bellemont.cms.dbox.com/',
        collectionTypes: [
          'articles',
          'categories'
        ],
        singleTypes: [
          'the-availability-page',
        ],
        queryLimit: 100,
      },
    },
  ],
};
