import styled from 'styled-components';
import leftImg from '../../assets/icons/icon-left.svg';
import rightImg from '../../assets/icons/icon-right.svg';
import { cssLock } from '../../helpers/Mixins';
import { mediaMax } from '../../helpers/MediaQueries';

export const StyledGallery = styled.section`
  position: fixed;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  background-color: #fff;
  z-index: 99999;
  overflow: hidden;
  padding: 56px;
  display: flex;
  align-items: center;
  justify-content: center;

  img, picture, source {
    object-fit: contain!important;
  }

  ${mediaMax.tabletLandscape`
    padding: 56px 48px;
  `};

  ${mediaMax.phoneXL`
    padding: 56px 24px;
  `};

  > div:nth-child(2n) {
    height: auto;
  }

  .swiper {
    padding: 48px;
    height: 100%;

    .swiper-slide {
      display: flex;
      align-items: center;
      background-color: #ffffff;
      > div {
        height: max-content;
      }
    }
  }

  .swiper-button-prev {
    left: 16px;

    &::after {
      content: '';
      background-image: url(${leftImg});
      background-repeat: no-repeat;
      background-position: center;
      background-size: contain;
      width: 12px;
      height: 24px;
    }
  }

  .swiper-button-next {
    right: 16px;

    &::after {
      content: '';
      background-image: url(${rightImg});
      background-repeat: no-repeat;
      background-position: center;
      background-size: contain;
      width: 16px;
      height: 24px;
    }
  }

  ${mediaMax.tabletLandscape`
    .gatsby-image-wrapper {
      height: 100%;
    }
  `};
`;

export const CloseGallery = styled.div`
  position: absolute;
  z-index: 42;
  right: 24px;
  top: 24px;
  cursor: pointer;
  height: max-content;
`;

export const ImageLabel = styled.div`
  position: absolute;
  left: 0;
  bottom: -32px;
  text-transform: uppercase;
  ${cssLock({
    minSize: 8, maxSize: 9, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 11, maxSize: 13, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  width: 100%;
  text-align: center;
  background-color: #ffffff;
`;
