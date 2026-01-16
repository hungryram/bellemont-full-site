import React from 'react';
import { ArticleProps } from '../../../interfaces/article-list-props.interface';
import {
  ArticleCard,
  ArticleThumb,
  ArticleInfo,
  ArticleTitle,
  ArticleDescription,
  ArticleLogoText,
  ArticleFooter,
  ArticleDate,
  ArticleReadMore
} from './index.styled';
import { GatsbyImage } from 'gatsby-plugin-image';

const ArticleItem = ({ node }: ArticleProps) => {
  console.log(node);
  return (
    <ArticleCard>
      {node.Thumb && (
        <ArticleThumb>
          {node.Thumb.localFile.childImageSharp
            ? <GatsbyImage
              image={node.Thumb.localFile.childImageSharp.gatsbyImageData}
              alt={node.Thumb.alternativeText}
            />
            : <img src={node.Thumb.localFile.publicURL} alt={node.Thumb.alternativeText}/>
          }
        </ArticleThumb>
        )
      }
      <ArticleInfo>
        <ArticleLogoText>
          {node.LogoText}
        </ArticleLogoText>
        <ArticleTitle>
          {node.Title}
        </ArticleTitle>
        <ArticleDescription>
          {node.Description || ''}
        </ArticleDescription>
        <ArticleFooter>
          <ArticleDate>
            {node.Date}
          </ArticleDate>
          <ArticleReadMore href={node.ArticleSource} target={'_blank'}>
            Read More
          </ArticleReadMore>
        </ArticleFooter>
      </ArticleInfo>
    </ArticleCard>
  );
};

export default ArticleItem;

