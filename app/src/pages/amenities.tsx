import React, { FC } from 'react';
import Hero from '../components/hero/index';
import AmenitiesContent from '../components/page-content/amenities';
import PageNavigation from '../components/page-navigation/index';
import PageLabel from '../components/page-label';
import FullscreenImage from '../components/fullscreen-image';
import amenitiesHeroData from '../constants/content/amenities/amenities-hero.const';
import amenitiesPageNavigationData from '../constants/content/amenities/amenities-navigation.const';
import { PageIntro } from '../styles/default-page.styled';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import useWindowSize from '../helpers/UseWindowSize';
// import amenitiesImg from '../assets/images/amenities-mobile2.png';

const AmenitiesPage: FC = () => {

  const size = useWindowSize();

  return (
    <>
      <PageLabel type={TypeVariant.large} name={'Amenities'} color={'#FDF7E2'}/>
      <PageIntro>
        <FullscreenImage imageSrc={size.width <= 500 ? 'amenities-resp.jpg' : 'amenities.jpg'} margin={'0'}
                         position={'25%'} increase={true} alt={'New Condo Upper East Side'}/>
        {/*<FullscreenImage imageSrc={size.width <= 500 ? "neighborhood-resp.jpg" : "neighborhood.jpg"} margin={'0'} position={'0 top'}/>*/}
      </PageIntro>
      <Hero {...amenitiesHeroData}/>
      <AmenitiesContent/>
      <PageNavigation {...amenitiesPageNavigationData}/>
    </>
  );
};

export default AmenitiesPage;
