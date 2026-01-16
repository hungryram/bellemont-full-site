import styled from 'styled-components';
import { Link } from 'gatsby';
import { cssLock } from '../../helpers/Mixins';
import { mediaMax } from '../../helpers/MediaQueries';

export const PageNavigationSection = styled('section')<{ links: number }>`
  padding: 37px 10%;
  display: flex;
  justify-content: space-between;

  ${mediaMax.tabletLandscape`
    justify-content: ${(props: { links: number }) => props.links === 1 ? 'center' : 'space-between'};
  `};

  ${mediaMax.phoneXL`
    padding: 37px 20px;
  `};
`;

export const PageNavigationLinkWrapperPrev = styled.div`
  div {
    padding-left: 21px;

    &::after {
      border-top: 6px solid transparent;
      border-bottom: 6px solid transparent;
      border-right: 8px solid #000;
      left: 0;
    }
  }
`;

export const PageNavigationLinkWrapperNext = styled.div`
  div {
    padding-right: 21px;

    &::after {
      border-top: 6px solid transparent;
      border-bottom: 6px solid transparent;
      border-left: 8px solid #000;
      right: 0;
    }
  }
`;

export const PageNavigationLink = styled(Link)`
  display: flex;
  flex-direction: column;
  color: #000;
  ${cssLock({
    minSize: 13, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 13, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  letter-spacing: 1.44px;
  text-transform: uppercase;
  align-items: center;
`;

export const PageNavigationLinkIcon = styled.img`
  width: 33px;
  height: 33px;
  margin-bottom: 16px;

  ${mediaMax.phoneXL`
    width: 24px;
    height: 24px;
  `};
`;

export const PageNavigationLinkName = styled.div`
  position: relative;

  &:after {
    content: '';
    position: absolute;
    width: 0;
    height: 0;
    top: -2px;
  }
`;

export const EmptyBlock = styled.span``;
