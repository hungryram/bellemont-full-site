import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';
import { cssLock } from '../../../helpers/Mixins';

export const ContactInfoWrapper = styled.div`
  position: fixed;
  left: 28px;
  top: 120px;
  max-width: 330px;
  ${mediaMax.desktopSmall`
    max-width: 288px;
  `};
  ${mediaMax.tabletLandscape`
    padding-bottom: 54px;
    position: relative;
    top: 0;
    left: 0;
    display: flex;
    flex-direction: column;
    align-items: flex-start;
    max-width: 100%;
  `};

  ${mediaMax.phoneXL`
    padding-bottom: 0;
  `};
`;

export const ContactInfoTextWrapper = styled.div`
  ${mediaMax.tabletLandscape`
    width: 488px;
    margin: 0 auto;
    padding:0 24px;
  `};
  ${mediaMax.phoneXL`
    width: 100%;
    padding: 0;
  `};
`;

export const ContactInfoText = styled.div`
  white-space: pre-line;
  text-align: left;
  ${cssLock({
    minSize: 13, maxSize: 16, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 18, maxSize: 22, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  letter-spacing: 0.96px;
  color: #1a1818;
  text-transform: uppercase;
  padding-bottom: 16px;

  a {
    display: block;
    color: #1a1818;
    text-decoration: none;
    width: max-content;
  }

  .contact-phone {
    pointer-events: none;
    ${mediaMax.phoneXL`
      pointer-events: auto;
    `};
  }
`;
