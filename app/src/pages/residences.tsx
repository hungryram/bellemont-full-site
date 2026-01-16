import React, { FC } from 'react';
import Hero from '../components/hero/index';
import ResidencesContent from '../components/page-content/residences';
import PageNavigation from '../components/page-navigation/index';
import PageLabel from '../components/page-label';
import FullscreenImage from '../components/fullscreen-image';
import residencesHeroData from '../constants/content/residences/residences-hero.const';
import residencesPageNavigationData from '../constants/content/residences/residences-navigation.const';
import residencesContentData from '../constants/content/residences/residences-content.const';
import { PageIntro, PageIntroCustom } from '../styles/default-page.styled';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import useWindowSize from '../helpers/UseWindowSize';
import residencesImg from '../assets/images/residences.jpg';

const ResidencesPage: FC = () => {

  const size = useWindowSize();

  return (
    <>
      <PageLabel name={'Residences'} type={TypeVariant.large}/>
      {size.width < 577 ?
        <PageIntroCustom>
          <FullscreenImage imageSrc={'residences-resp.jpg'} margin={'0'} increaseOrig={'residences.jpg'}
                           alt={'Luxury Condos Upper East Side NYC 35'}/>
        </PageIntroCustom>
        :
        <PageIntro>
          <FullscreenImage imageSrc={'residences.jpg'} margin={'0'} increase={true}
                           alt={'Luxury Condos Upper East Side NYC 35'}/>
        </PageIntro>
      }
      <Hero {...residencesHeroData}/>
      <ResidencesContent {...residencesContentData}/>
      <PageNavigation {...residencesPageNavigationData}/>
    </>
  );
};

export default ResidencesPage;
