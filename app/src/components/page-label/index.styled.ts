import styled from 'styled-components';
import { mediaMax } from '../../helpers/MediaQueries';
import { cssLock } from '../../helpers/Mixins';

export const PageLabelStyled = styled('div')`
  letter-spacing: 1.44px;
  text-transform: uppercase;
  position: ${(props: { fixed: boolean }) => props.fixed ? 'fixed' : 'absolute'};
  top: 33px;
  left: 50%;
  color: ${props => props.color};
  transform: translateX(-50%);
  font-weight: 600;
  z-index: 2;

  ${mediaMax.phoneXL`
    top: 25px;
  `};
`;

export const PageLabelTitle = styled.div`
  line-height: 1;
  font-weight: 600;
  font-family: ${(props: any) => props.type !== 'small' && 'Couture, sans-serif'};
  white-space: nowrap;
  h1 {
    ${cssLock({
      minSize: 13, maxSize: 20, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 18, maxSize: 22, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    font-weight: 600;
  }
`;
