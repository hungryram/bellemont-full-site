import React from 'react';
import { PageProps } from 'gatsby';
import PageLabel from "../components/page-label";
import Hero from "../components/hero";
import buildingHeroData from "../constants/content/building/building-hero.const";
import BuildingContent from "../components/page-content/building";
import PageNavigation from "../components/page-navigation";
import buildingPageNavigationData from "../constants/content/building/building-navigation.const";
import {TypeVariant} from "../interfaces/page-label-props.interface";
import {PageIntro} from "../styles/default-page.styled";
import FullscreenImage from "../components/fullscreen-image";
import useWindowSize from '../helpers/UseWindowSize';

const IndexPage: React.FC<PageProps> = () => {
  const size = useWindowSize();

  return (
    <>
      <PageLabel name={'ARCHITECTURE'} type={TypeVariant.large}/>
      <PageIntro>
        <FullscreenImage imageSrc={size.width <= 768 ? "building-tablet.jpg" : "hero-image.jpg"} margin={'0'} increaseOrig={"hero-image.jpg"} position={"50% 100%"} alt={'Upper East Side Condos'}/>
      </PageIntro>
      <Hero {...buildingHeroData}/>
      <BuildingContent/>
      <PageNavigation {...buildingPageNavigationData}/>
    </>
  );
};

export default IndexPage;
