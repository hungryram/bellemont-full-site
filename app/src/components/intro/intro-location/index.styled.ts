import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';
import { cssLock } from '../../../helpers/Mixins';

export const Text = styled.div`
  p {
    margin-bottom: 24px;
    font-weight: 600;
    ${cssLock({
      minSize: 18, maxSize: 20, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 22, maxSize: 26, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};

    span {
      display: block;
    }

    &:last-child {
      margin-bottom: 0;
    }
  }

  ${mediaMax.tabletLandscape`
    padding: 0 24%;
    p {
      span {
        display: inline;
      }
    }
  `}

  ${mediaMax.phoneXL`
    padding: 0 30px;
    p {
      font-size: 16px;
      line-height: 18px;
    }
  `};

  ${mediaMax.phoneMd`
    padding: 0 15px;
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

