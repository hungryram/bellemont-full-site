import styled from "styled-components";
import { mediaMax } from "../../../helpers/MediaQueries";
import { cssLock } from '../../../helpers/Mixins';

export const ContactBodyWrapper = styled.div`
  background: #fbf7f2;
  transition: opacity 0.3s linear;
`;

export const ContactBodyCloseIcon = styled.div`
  position: absolute;
  right: 38px;
  top: 45px;
  width: 20px;
  height: 20px;
  opacity: 1;
  cursor: pointer;
  transition: opacity 0.3s;
  will-change: opacity;
  z-index: 10;

  ${mediaMax.phoneXL`
    position: fixed;
    right: 24px;
    top: 32px;
  `}
  &:hover {
    opacity: 1;
  }

  &:before,
  &:after {
    position: absolute;
    left: 50%;
    content: " ";
    height: 24px;
    width: 1px;
    background-color: #1a1818;
  }

  &:before {
    transform: rotate(45deg);
  }

  &:after {
    transform: rotate(-45deg);
  }
`;

export const ContactBodyLogoImage = styled.img`
  position: absolute;
  left: 28px;
  top: 32px;
  width: 80px;
  cursor: pointer;
`;

export const ContactThanks = styled.div`
  text-align: center;

  h5 {
    font-family: Couture, sans-serif;
    ${cssLock({
      minSize: 22, maxSize: 24, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 22, maxSize: 24, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    margin-bottom: 16px;

    ${mediaMax.tabletLandscape`
      font-size: 16px;
      line-height: 16px;
    `}
  }

  p {
    ${cssLock({
      minSize: 14, maxSize: 15, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 16, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    ${mediaMax.tabletLandscape`
      font-size: 11px;
      line-height: 16px;
    `}
  }

  color: #000;
  text-transform: uppercase;
  padding: 0 24px;
  display: flex;flex-direction: column;
  align-items: center;
  justify-content: center;
  height: calc(100vh - 133px);
`;

export const ContactText = styled.p`
  text-align: center;
  font: normal normal normal 16px/16px Couture;
  letter-spacing: 0.6px;
  color: #1a1818;
  text-transform: uppercase;
  margin-bottom: 25px;
  margin-top: 95px;

  ${mediaMax.phoneXL`
    margin-bottom: 40px;
  `}
`;
export const ContactFormContainer = styled.div`
  width: 488px;
  margin: 0 auto;
  display: flex;
  flex-direction: column;
  align-items: flex-start;
  justify-content: space-between;
  background-color: #FDF7E2;
  align-items: center;

  ${mediaMax.phoneXL`
    padding: 0;
    width: 100%;
  `}
`;
