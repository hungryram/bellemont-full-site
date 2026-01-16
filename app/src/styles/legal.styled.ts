import styled from 'styled-components';
import { cssLock } from '../helpers/Mixins';
import { mediaMax } from '../helpers/MediaQueries';

export const LegalWrapper = styled.section`
  min-height: calc(100vh - 133px);
  padding: 32px;
  background-color: #FDF7E2;
  display: flex;
  align-items: center;
  justify-content: center;
`;

export const LegalLogo = styled.div`
  position: absolute;
  top: 32px;
  left: 50%;
  transform: translateX(-50%);
  text-align: center;
`;

export const HeaderLogoTitle = styled.div`
  ${cssLock({
    minSize: 21, maxSize: 24, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 21, maxSize: 24, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  text-transform: uppercase;
  letter-spacing: 0.2vh;
  margin-bottom: 1vh;
  white-space: nowrap;
`;

export const HeaderLogoSubtitle = styled.div`
  ${cssLock({
    minSize: 8, maxSize: 9, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 8, maxSize: 9, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  text-transform: uppercase;
`;

export const LegalClose = styled.div`
  position: absolute;
  top: 20px;
  right: 20px;
  cursor: pointer;
`;

export const LegalContentWrapper = styled.div`
  text-align: center;
  max-width: 47.5%;

  ${mediaMax.tabletLandscape`
    max-width: 75%;
  `};

  ${mediaMax.tabletLandscape`
    max-width: 100%;
    padding: 160px 0 100px;
  `};
`;

export const LegalContentTitle = styled.div`
  ${cssLock({
    minSize: 15, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 15, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  text-transform: uppercase;
  margin-bottom: 24px;
`;
export const LegalContent = styled.div`
  margin-bottom: 24px;
  ${cssLock({
    minSize: 16, maxSize: 19, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 20, maxSize: 24, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-weight: bold;
`;

export const LegalContentBy = styled.div`
  ${cssLock({
    minSize: 16, maxSize: 19, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 20, maxSize: 24, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-weight: bold;
`;

