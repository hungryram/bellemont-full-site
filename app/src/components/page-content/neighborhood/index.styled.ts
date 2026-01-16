import styled from 'styled-components';
import { cssLock } from '../../../helpers/Mixins';
import { mediaMax } from '../../../helpers/MediaQueries';

export const NeighborhoodContentSection = styled.section`
  margin: 0 auto;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
`;

export const ContentCopy = styled.div`
  margin: 106px auto 130px;
  font-family: 'Adobe Garamond Pro', serif;
  font-weight: 600;
  ${cssLock({
    minSize: 18, maxSize: 20, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 22, maxSize: 24, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  span {
    display: block;
    ${mediaMax.tablet`
      display: inline;
    `};
  }
  ${mediaMax.tabletLandscape`
    margin: 76px 10% 100px;
  `};
  ${mediaMax.phoneXL`
    margin: 56px 30px 80px;
  `};
`;
export const ContentImages = styled.div`
  width: 93%;
  display: flex;
  margin-bottom: 132px;
  flex-direction: row;
  flex-wrap: wrap;
  align-items: center;

  & > div {
    flex-basis: calc(50% - 11px);
    margin-right: 20px;
    margin-bottom: 0;

    &:nth-child(2) {
      margin-right: 0;
    }

    ${mediaMax.phoneXL`
      margin-right: 10px;
      flex-basis: calc(50% - 5px);
    `};
  }


  &.content-images-default {
    margin-bottom: 160px;
    ${mediaMax.tabletLandscape`
      margin-bottom: 100px;
    `};

    ${mediaMax.phoneXL`
      margin-bottom: 80px;
    `};
  }

  &.shift {
    margin-bottom: 160px;

    & > div:first-child {
      margin-bottom: 83px;
    }

    ${mediaMax.tabletLandscape`
      margin-bottom: 100px;

      & > div:first-child {
        margin-bottom: 0;
      }
    `};

    ${mediaMax.phoneXL`
      margin-bottom: 80px;
    `};
  }

  &.left-shift {
    margin-bottom: 100px;

    & > div:nth-child(2n) {
      margin-bottom: 82px;

      ${mediaMax.phoneXL`
        margin-bottom: 29px;
      `};
    }

    ${mediaMax.phoneXL`
      margin-bottom: 80px;
    `};
  }

  &.end {
    align-items: end;
  }
  &.start {
    align-items: flex-start;
  }
  &.center {
    align-items: center;
  }
  .wrapper {
    display: flex;
    justify-content: space-between;
    align-items: center;
    width: 100%;
  }
  .leftCol, .rightCol {
    width: calc( 50% - 0.93%);
    height: 100%;
  }
  .leftCol {
    display: flex;
    flex-direction: column;
    justify-content: space-between;
    height: 100%;
  }

  ${mediaMax.phoneXL`
    width: 100%;
    margin-bottom: 10px;
  `};
`;
