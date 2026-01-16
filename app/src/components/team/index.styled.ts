import styled from 'styled-components';
import { mediaMax } from '../../helpers/MediaQueries';
import { cssLock } from '../../helpers/Mixins';

export const Team = styled.section`
  background-color: #FDF7E2;
  min-height: calc(100vh - 133px);
  padding: 144px 25px 45px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
`;

export const PersonItem = styled.div`
  margin-bottom: 54px;
`;

export const PersonMainInfo = styled.div`
  text-align: center;
`;

export const PersonName = styled.a`
  font-family: Couture, sans-serif;
  color: #000;
  ${cssLock({
    minSize: 20, maxSize: 24, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  line-height: 1;
  text-transform: uppercase;
  letter-spacing: 1px;
`;

export const PersonPosition = styled.div`
  font-family: Couture, sans-serif;
  ${cssLock({
    minSize: 10, maxSize: 12, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  line-height: 1;
  text-transform: uppercase;
  margin-bottom: 13px;

`;
