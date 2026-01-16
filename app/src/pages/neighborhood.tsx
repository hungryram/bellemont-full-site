import React, { FC } from 'react';
import Hero from '../components/hero/index';
import NeighborhoodContent from '../components/page-content/neighborhood';
import PageNavigation from '../components/page-navigation/index';
import PageLabel from '../components/page-label';
import FullscreenImage from '../components/fullscreen-image';
import neighborhoodHeroData from '../constants/content/neighborhood/neighborhood-hero.const';
import neighborhoodPageNavigationData from '../constants/content/neighborhood/neighborhood-navigation.const';
import { PageIntro, ArrowDown, ButtonScroll } from '../styles/default-page.styled';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import neighborhoodImg from '../assets/images/neighborhood-mobile2.png';
import useWindowSize from '../helpers/UseWindowSize';

const NeighborhoodPage: FC = () => {

  const scrollToBottom = () => {
    window.scrollTo({ left: 0, top: document.body.scrollHeight, behavior: 'smooth' });
  };

  const size = useWindowSize();

  return (
    <>
      <PageLabel name={'Neighborhood'} type={TypeVariant.large}/>
      <PageIntro className={'neighborhood'}>
        <FullscreenImage imageSrc={size.width <= 500 ? 'neighborhood-resp.jpg' : 'neighborhood.jpg'} margin={'0'}
                         position={'0 top'} alt={'The Bellemont Residence'}/>
      </PageIntro>
      <Hero {...neighborhoodHeroData}/>
      <NeighborhoodContent/>
      <PageNavigation {...neighborhoodPageNavigationData}/>
      <ButtonScroll onClick={() => {
        scrollToBottom();
      }}>
        <ArrowDown/>
      </ButtonScroll>
    </>
  );
};

export default NeighborhoodPage;
