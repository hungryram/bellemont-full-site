import styled from 'styled-components';
import { mediaMax } from '../../helpers/MediaQueries';

export const Availability = styled.section`
  background-color: #FDF7E2;
  min-height: calc(100vh - 133px);
  overflow-x: auto;
  display: flex;

  ${mediaMax.tabletLandscape`
   padding-top: 100px;
  `};
`;
