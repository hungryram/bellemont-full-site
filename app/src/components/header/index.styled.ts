import styled from 'styled-components';
import { Link } from 'gatsby';
import { mediaMax } from '../../helpers/MediaQueries';
import { IHeaderProps } from '../../interfaces/header-props.interface';
import { cssLock } from '../../helpers/Mixins';

export const HeaderContainer = styled.div`
  display: flex;
  justify-content: space-between;
  padding: 24px 32px 0;
  position: fixed;
  top: 0;
  left: 0;
  right: 0;
  transition: 0.4s ease-out;
  z-index: 10;
  opacity: 1;
  fill: #000;
  color: #000;

  #header-logo-path {
    fill: inherit;
  }

  #header-menu-btn {
    color: inherit;
  }

  ${mediaMax.tabletLandscape`
    height: 82px;
  `};

  ${mediaMax.phoneXL`
    height: auto;
    justify-content: center;
    padding: 18px 32px 0;
  `}
`;

export const HeaderLogo = styled(Link)`
  height: max-content;
  cursor: pointer;
  color: #000;

  ${mediaMax.phoneXL`
    &:not(.header-title-link) {
      display: none;
    }
  `}
`;

export const HeaderLogoItem = styled.img`
  margin: 0;
  width: 100%;
`;

export const HeaderNavigation = styled.div`
  display: flex;
  justify-content: flex-end;
  align-items: center;
  position: fixed;
  left: 0;
  top: 0;
  width: 100%;
  height: 100vh;
  background-color: rgba(0, 0, 0, .9);
  transition: 0.4s ease-out;
  overflow-y: auto;
  z-index: -11;
  opacity: 0;
  visibility: hidden;

  &.active {
    opacity: 1;
    z-index: 11;
    visibility: visible;
  }
`;

export const HeaderNavigationContent = styled.div`
  width: 38%;
  background-color: #FFF9E6;
  height: 100%;
  display: flex;
  flex-direction: column;
  padding: 32px 2.2% 54px 2.5%;
  overflow: hidden;

  ${mediaMax.tabletLandscape`
    width: 100%;
    padding: 32px 4% 54px 7%;
    justify-content: flex-start;
  `};

  ${mediaMax.phoneXL`
    padding: 31px 24px 31px 9px;
    overflow-y: auto;
  `};
`;

export const HeaderNavigationHeader = styled.div`
  display: flex;
  justify-content: space-between;
  align-items: center;
  margin-bottom: 160px;
  padding-left: 24px;

  ${mediaMax.tabletLandscape`
    margin-bottom: 0;
  `};
`;

export const CloseBtn = styled.img`
  display: block;
  max-width: 3.4vh;
  cursor: pointer;
`;

export const HeaderNavigationMenu = styled.div`
  display: flex;
  flex-direction: column;
  justify-content: center;
  margin-bottom: 93px;

  ${mediaMax.tabletLandscape`
    justify-content: flex-start;
    padding-top: 16vh;
    flex-grow: initial;
  `};

  ${mediaMax.phoneXL`
    padding-top: 128px;
  `};
`;

export const HeaderNavigationMainMenu = styled('div')`
  padding-bottom: 93px;
`;

export const HeaderNavigationSecondaryMenu = styled('div')`
  display: flex;
  flex-direction: column;
`;

export const HeaderNavigationFooter = styled('div')`
  .insta-icon {
    opacity: 1;
  }

  ${mediaMax.tabletLandscape`
    padding-top: 107px;
  `};

  ${mediaMax.phoneXL`
    padding-top: 0;
  `};

  a {
    padding: 24px;
    text-transform: capitalize;

    ${mediaMax.phoneXL`
      padding: 14px;
    `};
  }
`;

export const HeaderMainMenuLink = styled(Link)`
  display: block;
  position: relative;
  font-family: Couture, sans-serif;

  font-size: 20px;
  line-height: 24px;
  color: #000;
  text-decoration: none;
  text-transform: uppercase;
  letter-spacing: 0.07px;
  padding-left: 24px;
  transition: 0.4s ease-out;
  margin-bottom: 40px;

  ${mediaMax.phoneXL`
    padding-left: 14px;
  `};

  &:last-child {
    margin-bottom: 0;
  }

  &:hover {
    font-size: 21px;

    div {
      right: -100px;
    }
  }

  &:hover ::after,
  &.active ::after {
    content: "";
    position: absolute;
    left: 0;
    top: 5px;
    width: 6px;
    height: 6px;
    background: #000;
    border-radius: 100%;
  }
`;

export const HeaderMainMenuLinkIconBlock = styled.div`
  position: absolute;
  right: 0;
  top: 50%;
  transform: translateY(-50%);
  display: flex;
  justify-content: center;
  align-items: center;
  width: 3.25vh;
  transition: .3s;

  ${mediaMax.tabletLandscape`
    right: 11vh;
  `};

  ${mediaMax.phoneXL`
    right: 0;
  `};
`;

export const HeaderMainMenuLinkIcon = styled.img`
  max-width: 3.4vh;
  max-height: 3.8vh;
`;

export const HeaderSecondaryMenuLink = styled(Link)`
  display: block;
  ${cssLock({
    minSize: 14, maxSize: 16, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 14, maxSize: 16, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  margin-bottom: 14px;
  color: #000;
  letter-spacing: 1.44px;
  padding-left: 24px;
  text-transform: uppercase;

  &:last-child {
    margin-bottom: 0;
  }

  ${mediaMax.phoneXL`
    margin-bottom: 18px;
    padding-left: 14px;
  `};
`;

export const BellemontHeaderTitle = styled.div`
  font-family: Couture, sans-serif;
  font-size: 20px;
  line-height: 1;
  text-transform: uppercase;
  letter-spacing: 2px;
  color: #000;
  white-space: nowrap;
  padding-top: 9px;

  ${mediaMax.tabletLandscape`
    padding-top: 1.3vh;
  `};

  ${mediaMax.phoneXL`
    font-size: 15px;
    padding-top: 13px;
  `}
`;

export const BellemontMenuTitle = styled("a")`
  font-family: Couture, sans-serif;
  font-size: 20px;
  line-height: 1;
  text-transform: uppercase;
  letter-spacing: 2px;
  color: #000;
  white-space: nowrap;
  padding-top: 4px;
  cursor: pointer;
`;

export const MenuBtn = styled.div`
  ${cssLock({
    minSize: 13, maxSize: 16, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 18, maxSize: 22, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  letter-spacing: 1px;
  color: #000000;
  cursor: pointer;
  text-align: right;
  height: max-content;
  font-weight: 600;
  padding: 9px;

  ${mediaMax.phoneXL`
    position: absolute;
    width: 42px;
    height: 31px;
    display: flex;
    align-items: center;
    justify-content: center;
    right: 16px;
    top: 16px;

    p {
      display: none;
    }

    span {
        width: 24px;
        height: 1px;
        background-color: #000;

        &::after {
          content: '';
          position: absolute;
          bottom: 9px;
          left: 50%;
          transform: translateX(-50%);
          width: 24px;
          height: 1px;
          background-color: #000;
        }

        &::before {
          content: '';
          position: absolute;
          top: 9px;
          left: 50%;
          transform: translateX(-50%);
          width: 24px;
          height: 1px;
          background-color: #000;
        }
      }
  `}
`;
