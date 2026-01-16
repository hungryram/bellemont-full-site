import styled from 'styled-components';
import { mediaMax } from '../../../../helpers/MediaQueries';

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

  .gatsby-image-wrapper {
    height: 100vh;
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

export const PageGradient = styled.div`
  background: linear-gradient(#FFF9E6, #80808000);
  height: 200px;
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  z-index: 1;
`;
