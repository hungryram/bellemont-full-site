import styled from 'styled-components';
import { mediaMax } from '../../../helpers/MediaQueries';

export const AmenitiesContentSection = styled.section`
  padding-top: 132px;
  position: relative;

  ${mediaMax.tabletLandscape`
    .gatsby-image-wrapper {
      width: 100%;
    }
  `};

  ${mediaMax.phoneXL`
    padding-top: 0;
  `};
`;

export const AmenitiesContentContainer = styled.div`
  margin: 0 auto;
  text-align: center;
  display: flex;
  flex-direction: column;
  align-items: center;
`;
