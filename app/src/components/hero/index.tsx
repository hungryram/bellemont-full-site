import React from 'react';
import {
  HeroSection,
  HeroTitle,
  HeroAuthor,
  HeroIcon,
  HeroDescription,
  HeroIconWrapper,
} from './index.styled';
import { HeroPropsInterface } from '../../interfaces/hero-props.interface';

const Hero = ({ title, iconUrl, iconAlt, description, location, author }: HeroPropsInterface) => {
  return (
    <HeroSection {...location} >
      <HeroTitle dangerouslySetInnerHTML={{ __html: `${title}` }}/>
      {author && <HeroAuthor>{author}</HeroAuthor>}
      <HeroIconWrapper>
        <HeroIcon src={iconUrl} alt={iconAlt}/>
      </HeroIconWrapper>
      <HeroDescription dangerouslySetInnerHTML={{ __html: `${description}` }}/>
    </HeroSection>
  );
};

export default Hero;
