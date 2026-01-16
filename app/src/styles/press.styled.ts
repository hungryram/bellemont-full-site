import styled from 'styled-components';
import { cssLock } from '../helpers/Mixins';
import { mediaMax } from '../helpers/MediaQueries';

export const Press = styled.section`
  padding: 120px 10% 80px;
  min-height: calc(100vh - 133px);
  background-color: #FDF7E2;

  ${mediaMax.phoneXL`
      padding: 120px 24px 80px;
  `};
`;

export const Articles = styled.div`
  display: flex;
  flex-direction: column;
`;

export const CategoryTitle = styled.h5`
  text-transform: uppercase;
  margin-bottom: 24px;
  ${cssLock({
    minSize: 11, maxSize: 14, minWidth: 375, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 14, maxSize: 18, minWidth: 375, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
  font-family: Couture, sans-serif;

  ${mediaMax.phoneXL`
    margin-bottom: 16px;
  `};
`;
