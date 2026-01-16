import styled from 'styled-components';
import { cssLock } from '../../../helpers/Mixins';
import { mediaMax } from '../../../helpers/MediaQueries';

export const About = styled.div`
  padding-top: 130px;
  display: flex;
  flex-direction: column;
  align-items: center;
  text-align: center;

  ${mediaMax.tabletLandscape`
    .gatsby-image-wrapper {
      width: 70%;
    }
  `};

  ${mediaMax.phoneXL`
    padding-top: 80px;
    .gatsby-image-wrapper {
      width: calc(100% - 50px);
    }
  `};

`;

export const BuildingContentH4 = styled.h4`
  font-family: Couture, sans-serif;
  ${cssLock({
    minSize: 16, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 24, maxSize: 28, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  text-transform: uppercase;
  margin-bottom: 130px;

  &.bulding-second-title {
    margin-bottom: 23px;
  }

  span {
    display: block;
  }
  p {
    font-family: 'Adobe Garamond Pro', serif;
    font-weight: 600;
    padding-top: 20px;
    text-transform: capitalize;
    ${cssLock({
      minSize: 14, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    font-style: italic;

  }

  ${mediaMax.phoneXL`
    padding: 0 25px;
    width: 100%;
    margin-bottom: 60px;

    span {
      display: inline;
    }
  `};
`;

export const BuildingContentH5 = styled.h5`
  display: none;
  font-family: Couture, sans-serif;

  ${mediaMax.phoneXL`
    padding: 0 25px;
    margin-bottom: 60px;
    font-size: 14px;
    line-height: 24px;
    display: block;
    text-align: center;
  `};
`;

export const BuildingContentWrapper = styled.div`
  margin-bottom: 116px;

  p {
    font-weight: 600;
    font-size: 17px;
    line-height: 22px;
    ${cssLock({
      minSize: 18, maxSize: 20, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 23, maxSize: 28, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};

    &:not(:last-child) {
      margin-bottom: 30px;
    }

    span {
      display: block;
    }
  }

  ${mediaMax.phoneXL`
    padding: 0 25px;
    margin-bottom: 80px;

    p {
      span {
        display: inline;
      }
    }
  `};
`;
