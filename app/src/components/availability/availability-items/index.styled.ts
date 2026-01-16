import styled from 'styled-components';
import { cssLock } from '../../../helpers/Mixins';
import { mediaMax } from '../../../helpers/MediaQueries';

export const AvailabilityItemsWrapper = styled.div`
  padding: 120px 20px 98px;
  margin: 0 auto;
  width: 896px;
  ${mediaMax.tabletLandscape`
    display: flex;
    flex-wrap: wrap;
    justify-content: center;
    width: 100%;
  `};

  ${mediaMax.phoneXL`
    padding: 0 25px;
  `}
`;

export const Card = styled.div`
  white-space: nowrap;
  align-items: center;
  padding: 22px 0;
  border-bottom: 1px solid #000;
  display: grid;
  grid-template-columns: 190px 1fr 1fr 1fr 1fr 1fr 1fr;
  grid-column-gap: 28px;

  &:last-child {
    border-width: 2px;
  }

  &.headings {
    border-width: 2px;

    p {
      text-transform: uppercase;
      font-family: Couture, sans-serif;
      ${cssLock({
        minSize: 9, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
      })};
      ${cssLock({
        minSize: 14, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
      })};
      font-weight: bold;
      white-space: nowrap;
      letter-spacing: -0.3px;

      &:first-child {
        text-align: center;
      }
    }
  }

  p {
    padding-right: 1vh;
    text-align: left;
    ${cssLock({
      minSize: 11, maxSize: 12, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 14, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    letter-spacing: 0.96px;
    color: #000000;
    text-transform: uppercase;

    ${mediaMax.tabletLandscape`
        margin-bottom: 7px;
      `}

    a {
      text-decoration: none;
      color: #000000;
      transition: 0.4s ease-out;

      &:hover {
        opacity: 0.75;
      }
    }

    &.wide.sort {
      cursor: pointer;
      position: relative;

      &:after {
        content: "";
        position: absolute;
        top: -3px;
        margin-left: 6px;
        width: 8px;
        height: 8px;
        border: 1px solid black;
        transform: rotate(45deg);
        border-top-color: transparent;
        border-left-color: transparent;
        transition: 0.4s ease-out;
      }
    }

    &.wide.sort.rotate {
      &:after {
        top: 3px;
        transform: rotate(225deg);
      }
    }

    &.btn {
      font-weight: 600;
      text-transform: uppercase;
      font-family: Couture, sans-serif;

      ${mediaMax.tabletLandscape`
        position: absolute;
        right: 0;
        bottom: 0;
        margin: 22px 26px;
        padding: 0;

        &::after {
          content: '';
          position: absolute;
          width: 100%;
          bottom: 0;
          height: 2px;
          background-color: #000;
          left: 0;
        }
      `}
    }

    &.unit {
      text-transform: uppercase;
      text-align: center;
      font-family: Couture, sans-serif;
      ${cssLock({
        minSize: 15, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
      })};
      ${cssLock({
        minSize: 18, maxSize: 22, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
      })};
      font-weight: bold;
      white-space: nowrap;

      ${mediaMax.tabletLandscape`
        margin-bottom: 15px;
      `}
    }
  }

  ${mediaMax.tabletLandscape`
    width: 326px;
    padding: 23px 26px 14px;
    flex-direction: column;
    justify-content: flex-start;
    border: 1px solid #707070;
    display: flex;
    align-items: flex-start;
    margin: 19px;
    &.headings {
      display: none;
    }
    &:last-child {
      border-width: 1px;
    }
  `}

  ${mediaMax.phoneXL`
    margin: 0;
    margin-bottom: 33px;
  `}
`;

