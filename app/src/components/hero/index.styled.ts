import styled from 'styled-components';
import { mediaMax } from '../../helpers/MediaQueries';
import { cssLock } from '../../helpers/Mixins';
import { HeroLocation } from '../../interfaces/hero-props.interface';


export const HeroSection = styled.section`
  min-height: 100vh;
  padding: 132px 0;
  background: #FDF7E2;
  display: flex;
  align-items: center;
  justify-content: center;
  text-align: center;
  flex-direction: column;

  span {
    display: block;
  }

  ${mediaMax.tabletLandscape`
    min-height: auto;
    padding: 79px;

    span {
      display: ${(props:HeroLocation) => props.location === 'neighborhood' ? 'inline' : 'block'}
    }
  `};

  ${mediaMax.phoneXL`
    min-height: 100vh;
    padding: 30px;

    span {
      display: inline;
    }
  `};
`;
export const Wrapper = styled.section`
  display: flex;
  flex-direction: column;
  justify-content: center;
  text-align: center;

`;
export const HeroTitle = styled.div`
  h2 {
    font-family: Couture, sans-serif;
    ${cssLock({
      minSize: 28, maxSize: 32, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
    })};
    ${cssLock({
      minSize: 32, maxSize: 36, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
    })};
    text-transform: uppercase;
    letter-spacing: 1px;
    color: #000;

    ${mediaMax.phoneXL`
      font-size: 20px;
      line-height: 24px;
    `};
  }
`;
export const HeroAuthor = styled.p`
  font-family: 'Adobe Garamond Pro', serif;
  font-weight: 600;
  padding-top: 16px;
  text-transform: capitalize;
  font-style: italic;
  ${cssLock({
    minSize: 14, maxSize: 18, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
`;

export const HeroIcon = styled.img`
  padding: 14vh 0;

  ${mediaMax.phoneXL`
    padding: 70px 0;
  `};
`;

export const HeroDescription = styled.div`
  color: #000;
  font-weight: 600;
  ${cssLock({
    minSize: 18, maxSize: 20, minWidth: 1280, maxWidth: 1920, property: 'font-size', unit: 'px'
  })};
  ${cssLock({
    minSize: 22, maxSize: 26, minWidth: 1280, maxWidth: 1920, property: 'line-height', unit: 'px'
  })};
`;

export const HeroIconWrapper = styled.div``;

