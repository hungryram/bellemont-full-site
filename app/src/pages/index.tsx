import React from 'react';
import { PageProps } from 'gatsby';
import PageLabel from "../components/page-label";
import MainIntro from "../components/intro-main";
import Hero from "../components/hero";
import buildingHeroData from "../constants/content/building/building-hero.const";
import BuildingContent from "../components/page-content/building";
import PageNavigation from "../components/page-navigation";
import buildingPageNavigationData from "../constants/content/building/building-navigation.const";
import {TypeVariant} from "../interfaces/page-label-props.interface";

const IndexPage: React.FC<PageProps> = () => {

  return (
    <div className={"main"}>
      <PageLabel name={'ARCHITECTURE'} type={TypeVariant.large}/>
      <MainIntro />
      <Hero {...buildingHeroData}/>
      <BuildingContent/>
      <PageNavigation {...buildingPageNavigationData}/>
    </div>
  );
};

export default IndexPage;
