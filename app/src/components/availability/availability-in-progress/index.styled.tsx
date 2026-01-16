import styled from 'styled-components';
import { cssLock } from '../../../helpers/Mixins';

export const AvailabilityInProgressWrapper = styled.div`
  width: 100%;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
`;

export const AvailabilityInProgressTitle = styled.h2`
  font-family: Couture, sans-serif;
  ${cssLock({
    minSize: 28, maxSize: 30, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 32, maxSize: 36, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};

  span {
    display: block;
  }
`;
