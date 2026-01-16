import styled from "styled-components";
import { mediaMax, mediaMaxTablet } from "../../helpers/MediaQueries";

export const HomeWrapper = styled.div`
  width: 100%;
  height: 200vh;
  position: relative;
  overflow: hidden;
  pointer-events: none;
`;

export const HomeBackgroundImage = styled.div`
  width: 100%;
  min-height: 100vh;
  position: relative;
  overflow: hidden;
  display: flex;
  justify-content: center;
  cursor: pointer;
  min-height: -webkit-fill-available;
  div{
    height: 100%;
    width: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background-color: #fdf7e2;
    z-index: 1;
  }
  img {
    object-fit: cover;
    object-position: bottom;
    ${mediaMax.tablet`
      object-position: top!important;
    `}
`;
export const HomeMainBlock = styled.div`
  width: 100%;
  height: 100%;
  position: fixed;
  top: 0;
  bottom: 0;
  right: 0;
  left: 0;
  overflow: hidden;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  z-index: 3;
`;
export const HomeTextBlock = styled.div`
  position: absolute;
  top: 50%;
  left: 0;
  right: 0;
  pointer-events: none;
  transform: translateY(-50%);
  overflow: hidden;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  font-size: 58px;
  letter-spacing: 2.8px;
  text-transform: uppercase;
  font-family: "Couture", sans-serif;
  width: auto;
  ${mediaMax.tablet`
    font-size: 26px !important;
    pointer-events: none;
  `}
  ${mediaMaxTablet.tabletLandscape`
    font-size: 26px !important;
    pointer-events: none;
  `}
  h1 {
    margin: 0 0 0.2em;
    font-size: 1em;
  }
  h3 {
    font-size: 0.35em;
  }
`;
export const ArrowDown = styled.img`
  position: absolute;
  bottom: 48px;
  left: 50%;
  transform: translateX(-50%);
  pointer-events: auto;
`;
