import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';
import { cssLock } from '../../../helpers/Mixins';

export const Text = styled.div`
  h2 {
    ${cssLock({
      minSize: 28, maxSize: 32, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 32, maxSize: 36, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    font-family: Couture, sans-serif;
    letter-spacing: 2.8px;
    text-transform: uppercase;

    span {
      display: block;
    }
  }

  ${mediaMax.tabletLandscape`
    padding: 0 10%;

    h2 {
      font-size: 20px;
      line-height: 24px;
      letter-spacing: 2px;

      span {
        display: inline;
      }
    }
  `}

  ${mediaMax.phoneXL`
    padding: 0 25px;
    width: 100%;
  `}

  ${mediaMax.phoneMd`
    padding: 0 15px;
    h2 {
      font-size: 17px;
      line-height: 20px;
    }
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
  bottom: 53px;
  left: 50%;
  transform: translateX(-50%);
  cursor: pointer;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  text-transform: uppercase;
  padding: 15px;

  ${mediaMax.phoneMd`
    bottom: 15px;
  `}
`;

export const ArrowDown = styled.div`
  width: 0;
  height: 0;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-top: 12px solid #000;
  margin-top: 9px;
`;
