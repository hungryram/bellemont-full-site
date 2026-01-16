import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';
import { cssLock } from '../../../helpers/Mixins';

export const ResidencesContentSection = styled.section`
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;

  ${mediaMax.phoneXL`
    .gatsby-image-wrapper {
      min-height: 160px;
      margin-bottom: -30px
    }
 `};
`;

export const ResidencesContentH4 = styled.h4`
  margin-bottom: 29px;
  font-family: Couture, sans-serif;
  ${cssLock({
    minSize: 16, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 24, maxSize: 26, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  letter-spacing: 1px;
  text-transform: uppercase;

  span {
    display: block;
  }

  ${mediaMax.phoneXL`
    padding: 0 25px;
    margin-bottom: 30px;

    span {
      display: inline;
    }
  `};
`;

export const ResidencesContentP = styled.p`
  margin-bottom: 130px;
  font-weight: 600;
  ${cssLock({
    minSize: 18, maxSize: 20, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 22, maxSize: 24, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};

  span {
    display: block;
  }

  ${mediaMax.tabletLandscape`
    padding: 0 10%;
    margin-bottom: 100px;
  `};

  ${mediaMax.phoneXL`
    padding: 0 25px;
    margin-bottom: 80px;

    span {
      display: inline;
    }
  `};
`;

export const ContentImages = styled.div`
  width: 79.4%;
  margin: 0 auto;
  padding-bottom: 15px;
  display: flex;
  align-items: flex-end;
  justify-content: space-between;

  .leftCol {
    width: 60.18%;
  }

  .rightCol {
    width: 37.88%;
  }

  > div {
    margin-bottom: 0;
  }

  &:last-child {
    margin-bottom: 0;
  }

  ${mediaMax.tabletLandscape`
    display: flex;
    flex-direction: column;
    width: 100%;
    .leftCol {
      width: 100%;
    }
    .rightCol {
      width: 100%;
    }
    & > div:first-child {
      margin-bottom: 132px;
    }
  `}
`;
