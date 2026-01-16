import React, { FC } from 'react';
import { graphql, useStaticQuery } from 'gatsby';
import ArticleList from '../components/press/List';
import PageLabel from '../components/page-label';
import { Articles, CategoryTitle, Press, } from '../styles/press.styled';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import { HeaderBackground } from '../styles/default-page.styled';

const PressPage: FC = () => {

  const data = usePressPageQuery();
  const cats: number[] = [];

  data.allStrapiArticles.edges.map((article: any) => {
    cats.push(article.node.category.id);
  });

  const unique = cats.filter((value, index, self) => {
    return self.indexOf(value) === index;
  });

  return (
    <Press>
      <HeaderBackground/>
      <PageLabel name={'Press'} type={TypeVariant.small} fixed={true}/>
      {data.allStrapiCategories.edges.map((category: any, i: number) => {
        return (
          <Articles key={i}>
            {unique.includes(category.node.strapiId) && <CategoryTitle>{category.node.Title}</CategoryTitle>}
            <ArticleList list={data.allStrapiArticles.edges} id={category.node.strapiId}/>
          </Articles>
        );
      })}
    </Press>
  );
};

export default PressPage;

const usePressPageQuery = () => {
  return useStaticQuery(
    graphql`
      query PressPageQuery {
        allStrapiCategories {
          edges {
            node {
              Title
              strapiId
            }
          }
        }
        allStrapiArticles(sort: {order: DESC, fields: Date}) {
          edges {
            node {
              Title
              Description
              Date(formatString: "D MMMM Y")
              ArticleSource
              LogoText
              Thumb {
                alternativeText
                localFile {
                  publicURL
                  childImageSharp {
                    gatsbyImageData(layout: FULL_WIDTH)
                  }
                }
              }
              category {
                id
              }
            }
          }
        }
      }
    `
  );
};

