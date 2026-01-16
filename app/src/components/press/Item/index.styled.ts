import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';
import { cssLock } from '../../../helpers/Mixins';

export const ArticleCard = styled.li`
  display: grid;
  grid-template-columns: 35% 1fr;
  grid-column-gap: 2%;
  padding-bottom: 20px;
  border-bottom: 1px solid #000;
  width: 100%;
  margin-bottom: 24px;

  ${mediaMax.tabletLandscape`
    grid-template-columns: 1fr;
  `};
`;

export const ArticleThumb = styled.div`
  height: 200px;
  overflow: hidden;

  .gatsby-image-wrapper {
    object-fit: cover;
    height: 100%;
  }

  ${mediaMax.tabletLandscape`
    height: 310px;
    margin-bottom: 68px;

    .gatsby-image-wrapper {
      height: 100%;
    }
  `};

`;

export const ArticleLogoText = styled.h4`
  ${cssLock({
    minSize: 16, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 16, maxSize: 20, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  letter-spacing: 1.2px;
  text-transform: uppercase;
  margin-bottom: 16px;
`;

export const ArticleInfo = styled.div``;

export const ArticleTitle = styled.div`
  ${cssLock({
    minSize: 15, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 16, maxSize: 20, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  font-weight: bold;
  text-transform: uppercase;
  margin-bottom: 16px;
`;

export const ArticleDescription = styled.p`
  ${cssLock({
    minSize: 14, maxSize: 16, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 17, maxSize: 20, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-weight: 600;
  display: -webkit-box;
  -webkit-line-clamp: 4;
  -webkit-box-orient: vertical;
  overflow: hidden;
  margin-bottom: 16px;

  ${mediaMax.phoneXL`
    -webkit-line-clamp: 8;
  `};
`;

export const ArticleLogoWrapper = styled.div`
  margin-bottom: 16px;
  max-height: 30px;

  .gatsby-image-wrapper {
    max-height: 30px;
  }

  img {
    max-height: 30px;
    object-fit: contain !important;
    object-position: left;
  }
`;

export const ArticleFooter = styled.div`
  width: 100%;
  display: flex;
  justify-content: space-between;
  align-items: center;
`;

export const ArticleDate = styled.div`
  letter-spacing: 0.88px;
  ${cssLock({
    minSize: 10, maxSize: 12, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 10, maxSize: 12, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  text-transform: uppercase;
`;

export const ArticleReadMore = styled.a`
  position: relative;
  display: block;

  ${cssLock({
    minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 14, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  text-transform: uppercase;
  color: #000;

  &:after {
    content: '';
    position: absolute;
    bottom: -2px;
    left: 0;
    height: 4px;
    background-color: #000;
    width: 100%;
  }
`;
