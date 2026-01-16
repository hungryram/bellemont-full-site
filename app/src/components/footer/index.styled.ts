import styled from 'styled-components';
import { Link } from 'gatsby';
import { cssLock } from '../../helpers/Mixins';
import { mediaMax } from '../../helpers/MediaQueries';

export const FooterSection = styled.footer`
  padding: 24px 5%;
  background-color: #000;
  text-align: center;
  min-height: 133px;

  ${mediaMax.phoneXL`
    padding: 24px 0;
  `};
`;

export const FooterMenu = styled.nav`
  margin-bottom: 12px;
  display: flex;
  flex-wrap: wrap;
  justify-content: center;

  a {
    margin-bottom: 12px;
  }
`;

export const FooterAddress = styled.div`
  color: #FDF7E2;
  text-transform: uppercase;
`;

export const FooterLink = styled(Link)`
  ${cssLock({
    minSize: 13, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 13, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  color: #FDF7E2;
  text-transform: uppercase;
  margin: 0 20px;
  letter-spacing: 1.68px;
  white-space: nowrap;
`;

export const FooterLinkPDF = styled.a`
  ${cssLock({
    minSize: 13, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 13, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  color: #FDF7E2;
  text-transform: uppercase;
  margin: 0 20px;
  letter-spacing: 1.68px;
  white-space: nowrap;
`;

export const TopLine = styled.div`
  span {
    font-family: Couture, sans-serif;
    ${cssLock({
      minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    font-weight: bold;
    margin: 0 1vh;
    letter-spacing: 0.6px;
  }
`;

export const BottomLine = styled.div`
  a {
    font-family: Couture, sans-serif;
    ${cssLock({
      minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    font-weight: bold;
    margin: 0 8px;
    color: #FDF7E2;
    display: inline-block;
    letter-spacing: 0.6px;

    &.footer-phone {
      pointer-events: none;

      ${mediaMax.phoneXL`
        pointer-events: auto;
      `};
    }
  }
`;

export const BottomCopyright = styled.div`
  padding-top: 24px;
  font-family: Couture, sans-serif;
  ${cssLock({
    minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 10, maxSize: 11, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-weight: bold;
  margin: 0 8px;
  color: #FDF7E2;
  display: inline-block;
  letter-spacing: 0.6px;
`;
