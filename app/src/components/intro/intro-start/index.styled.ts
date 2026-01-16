import styled from 'styled-components';
import { cssLock } from '../../../helpers/Mixins';
import { mediaMax } from '../../../helpers/MediaQueries';

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

export const Text = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  text-transform: uppercase;
  letter-spacing: 2.8px;

  h1 {
    ${cssLock({
      minSize: 42, maxSize: 52, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    line-height: 1;
    font-family: Couture, sans-serif;
    margin: 0 0 16px;
    letter-spacing: 6px;
    white-space: nowrap;
    opacity: 0;

    ${mediaMax.phoneXL`
      ${cssLock({
        minSize: 30, maxSize: 37, minWidth: 320, maxWidth: 576, property: 'font-size', unit: 'px'
       })};
       letter-spacing: 2px;
    `}
  }

  h3 {
    ${cssLock({
      minSize: 13, maxSize: 14, minWidth: 576, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    font-family: Couture, sans-serif;
    opacity: 0;
  }
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
  font-size: 14px;
  line-height: 16px;
  letter-spacing: 1px;
  padding: 15px;
  opacity: 0;

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
