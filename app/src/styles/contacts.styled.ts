import styled from 'styled-components';
import { mediaMax } from '../helpers/MediaQueries';

export const ContactPage = styled.section`
  min-height: calc(100vh - 133px);
  background-color: #FDF7E2;

  ${mediaMax.phoneXL`
    padding: 24px;
  `}
`;
