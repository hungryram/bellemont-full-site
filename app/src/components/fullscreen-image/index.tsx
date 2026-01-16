import React, { FC, useContext } from 'react';
import { IFullscreenImageProps } from '../../interfaces/fullscreen-image-props.interface';
import { graphql, useStaticQuery } from 'gatsby';
import { GatsbyImage } from 'gatsby-plugin-image';
import { FullscreenImageWrapper } from './index.styled';
import { Context } from '../../context';

const FullscreenImage: FC<IFullscreenImageProps> = ({
                                                      imageSrc,
                                                      withPadding = '',
                                                      margin = '',
                                                      position = '',
                                                      increase = false,
                                                      increaseOrig = '',
                                                      alt = 'The Bellemont',
                                                    }) => {
  const { handleGalleryOpen, setIsScroll } = useContext(Context);

  const data = useStaticQuery(graphql`
    query {
      allImageSharp {
        edges {
          node {
            gatsbyImageData(layout: FULL_WIDTH)
          }
        }
      }
    }
  `);


  return (
    <FullscreenImageWrapper
      withPadding={withPadding}
      margin={margin}
      position={position}
      increase={increase}
      increaseOrig={increaseOrig}
      onClick={() => {
        if (increase) {
          handleGalleryOpen({ imageSrc });
          setIsScroll(false);
        }
        if (increaseOrig) {
          imageSrc = increaseOrig;
          handleGalleryOpen({ imageSrc });
          setIsScroll(false);
        }
      }}
    >
      <GatsbyImage
        image={
          data.allImageSharp.edges.find((element: any) => {
            return element.node.gatsbyImageData.images.fallback.src.split('/').pop() === imageSrc;
          }).node.gatsbyImageData
        }
        alt={alt}
        loading={'lazy'}
      />
    </FullscreenImageWrapper>
  );
};

export default FullscreenImage;
