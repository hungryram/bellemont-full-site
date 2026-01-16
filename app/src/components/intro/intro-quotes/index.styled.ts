import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';
import { cssLock } from '../../../helpers/Mixins';

export const Text = styled.div`
  h4 {
    text-transform: uppercase;
    margin-bottom: 30px;
    font-family: Couture, sans-serif;
    letter-spacing: 0.64px;
    ${cssLock({
      minSize: 16, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 21, maxSize: 24, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};

    span {
      display: block;
    }
  }

  ${mediaMax.tabletLandscape`
    padding: 0 30px;
  `}

  ${mediaMax.phoneXL`
    h4 {
      font-size: 12px;
      line-height: 14px;
      margin-bottom: 18px;
      span {
        display: inline;
      }
    }
  `}

  ${mediaMax.phoneMd`
    padding: 0 15px;
    h4 {
      font-size: 11px;
      line-height: 12px;
    }
  `}
`;

export const Row = styled.div`
  &:not(:last-child) {
    margin-bottom: 50px;

    ${mediaMax.phoneXL`
      margin-bottom: 30px;
    `}
  }
`;

export const Author = styled.div`
  ${cssLock({
    minSize: 15, maxSize: 17, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 20, maxSize: 22, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};

  span {
    display: block;
  }

  ${mediaMax.tabletLandscape`
    font-size: 12px;
    line-height: 16px;
  `};

  ${mediaMax.phoneXL`
    span {
      display: inline;
    }
  `}

  ${mediaMax.phoneMd`
    font-size: 11px;
    line-height: 12px;
  `}
`;

export const FullViewWrapper = styled.section``;

export const FullViewContainer = styled.div`
  width: 100%;
  background: #FDF7E2;
  display: flex;
  flex-direction: column;
  align-items: center;
  overflow-x: hidden;
  overflow-y: hidden;
  height: 100%;
  justify-content: center;
`;

export const FullViewContent = styled.div`
  height: inherit;
  width: 100%;
  overflow: hidden;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
`;

export const ButtonScroll = styled.div`
  position: absolute;
  bottom: 60px;
  left: 50%;
  transform: translateX(-50%);
  cursor: pointer;
  display: flex;
  justify-content: center;
  align-items: center;
  text-transform: uppercase;

  ${mediaMax.phoneMd`
    bottom: 30px;
  `}

  a {
    display: flex;
    align-items: center;
    line-height: 15px;
    font-size: 13px;
    letter-spacing: 1px;
    color: #000;
    white-space: nowrap;
  }
`;

export const ArrowRight = styled.div`
  width: 0;
  height: 0;
  border-top: 5px solid transparent;
  border-bottom: 5px solid transparent;
  border-left: 8px solid #000;
  margin-left: 28px;
  transform: translateY(-2px);
`;


