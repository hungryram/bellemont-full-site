import React from 'react';
// @ts-ignore
import { Helmet } from 'react-helmet';
import { useStaticQuery, graphql } from 'gatsby';

const Seo = () => {
  const { site } = useStaticQuery(query);
  const { title, titleTemplate, description } = site.siteMetadata;

  return (
    <Helmet
      title={title}
      titleTemplate={titleTemplate}
      htmlAttributes={{
        lang: 'en',
      }}
    >
      <meta name="description" content={description}/>
      <meta name="msvalidate.01" content="6432C5413ABB713215B2FD953ABFD58F"/>
      <meta name="robots"/>
    </Helmet>
  );
};

export default Seo;

const query = graphql`
  query Seo {
    site {
      siteMetadata {
        title
        titleTemplate
        description
      }
    }
  }
`;
