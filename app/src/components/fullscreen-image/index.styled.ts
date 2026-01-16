import styled from 'styled-components';
import { mediaMax } from '../../helpers/MediaQueries';
import { cssLock } from '../../helpers/Mixins';

export const FullscreenImageWrapper = styled('div')<{ withPadding: string, margin: string, position: string, increase: boolean, increaseOrig: string  }>`
  display: flex;
  flex-direction: column;
  align-items: center;
  width: 100%;
  max-height: 100%;
  height: 100%;
  margin-bottom: ${(props: { margin: string }) =>
    props.margin ? props.margin : '132px'};

  .gatsby-image-wrapper {
    cursor: ${(props: {increase: boolean, increaseOrig: string }) => props.increase || props.increaseOrig ? 'pointer' : 'auto'};
    width: ${(props: { withPadding: string }) =>
      props.withPadding ? props.withPadding : '100%'};
    ${mediaMax.tabletLandscape`
      width: 100%;
    `};
  }

  ${mediaMax.phoneXL`
    width: 100%;
    margin-bottom: ${(props: { margin: string }) =>
    props.margin ? props.margin : '100px'};
  `};

  source,
  img {
    object-position: ${props => props.position};
  }
`;

export const FullscreenImageLabel = styled("p")<{
  labelWidth: string | undefined;
}>`
  margin: 12px 10% 0;
  width: ${(props: { labelWidth: string | undefined }) =>
  props.labelWidth ? props.labelWidth : "80%"};
  text-transform: uppercase;
  ${cssLock({
    minSize: 8, maxSize: 9, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 11, maxSize: 13, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;
  text-align: center;
`;
