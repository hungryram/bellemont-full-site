import styled from 'styled-components';
import { mediaMax } from '../helpers/MediaQueries';

export const PageIntro = styled.section`
  height: 100vh;
  background-color: #FDF7E2;

  div {
    min-height: 100vh;
  }

${mediaMax.phoneXL`
  img {
    height: 100vh;
    width: 100%;
    object-fit: cover;
  }
`};
`;

export const PageIntroCustom = styled.section`
  height: 50vh;
  background-color: #FDF7E2;

  div {
    min-height: 50vh;
  }

  ${mediaMax.phoneXL`
  img {
    height: 50vh;
    width: 100%;
    object-fit: cover;
  }
`};
`;


export const Gradient = styled.div`
  ${mediaMax.phoneXL`
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 183px;
    background: linear-gradient(#FFF9E6, #80808000);
    z-index: 1;
  `};
`;

export const HeaderBackground = styled.div`
  height: 96px;
  background-color: #FDF7E2;
  width: 100%;
  position: fixed;
  left: 0;
  top: 0;
  z-index: 1;

  ${mediaMax.phoneXL`
    height: 82px;
  `};
`;


export const ButtonScroll = styled.div`
  position: fixed;
  bottom: 15px;
  right: 0;
  cursor: pointer;
  display: flex;
  justify-content: center;
  flex-direction: column;
  align-items: center;
  text-transform: uppercase;
  font-size: 14px;
  line-height: 16px;
  letter-spacing: 1px;
  padding: 10px;

  ${mediaMax.tabletLandscape`
    bottom: 40px;
    padding: 15px;
    right: 10px;
  `};
`;

export const ArrowDown = styled.div`
  width: 0;
  height: 0;
  border-left: 8px solid transparent;
  border-right: 8px solid transparent;
  border-top: 12px solid #000;
  margin-top: 9px;
`;
