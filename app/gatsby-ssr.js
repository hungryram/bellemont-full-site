import React from "react"
export const onRenderBody = (
  { setHeadComponents, setPostBodyComponents },
) => {
  setHeadComponents([
    <script
      type="application/ld+json"
      dangerouslySetInnerHTML={{
        __html: `
          {
            "@context": "https://schema.org",
            "@type": "Residence",
            "name": "The Bellemont",
            "url": "https://the-bellemont.com/",
            "telephone": "212 764 1165",
            "address": {
              "@type": "PostalAddress",
              "streetAddress": "1165 Madison Avenue",
              "addressLocality": "New York",
              "addressRegion": "NY",
              "postalCode": "10028",
              "addressCountry": "USA"
            },
            "geo": {
              "@type": "GeoCoordinates",
              "latitude": 40.78047550000001,
              "longitude": -73.95877279999999
            }
          }
        `,
      }}
    />,
    <script dangerouslySetInnerHTML={{
      __html: `(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-5NBC6QQ')`}}
        />,


])
  setPostBodyComponents([
    <noscript dangerouslySetInnerHTML={{
      __html: `
          <iframe src="https://www.googletagmanager.com/ns.html?id=GTM-5NBC6QQ"
          height="0" width="0" style="display:none;visibility:hidden"></iframe>
        `}}
      />
  ])
}
