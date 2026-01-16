import React from 'react';
import {
  NeighborhoodContentSection,
  ContentImages,
  ContentCopy
} from './index.styled';
import FullscreenImage from '../../fullscreen-image';
import useWindowSize from '../../../helpers/UseWindowSize';

const NeighborhoodContent = () => {

  const size = useWindowSize();

  return (
    <NeighborhoodContentSection>
      <FullscreenImage imageSrc={'neighborhood-2.jpg'} margin={'24px'} alt={'Garden'}/>
      <ContentCopy>
        <span>The Upper East Side prides itself on having the most notable architecture, the most </span>
        <span>coveted public art collection, and an array of delights in food and fashion. A visit to </span>
        <span>the Metropolitan Museum, a walk in Central Park, an afternoon browsing the most </span>
        <span>charming fashion houses, and lunch at a chic Madison Avenue café are daily </span>
        <span>occasions with The Bellemont as one's home</span>
      </ContentCopy>
      <FullscreenImage imageSrc={'neighborhood-3.jpg'} margin={size.width <= 576 ? '80px' : ''} alt={'Aquazzura'}/>
      <ContentImages className={'end'}>
        <FullscreenImage imageSrc={'neighborhood-4.jpg'} margin={'22px'} alt={'Eli’s Bread – Royal Bakers'}/>
        <FullscreenImage imageSrc={'neighborhood-5.jpg'} margin={'22px'} alt={'Eli’s Bread Bakery'}/>
      </ContentImages>
      <FullscreenImage imageSrc={'neighborhood-6.jpg'} withPadding={'81.2%'} margin={size.width <= 576 ? '80px' : ''}
                       alt={'The Bellemont -Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-7.jpg'} margin={'24px'} alt={'Park'}/>
      <FullscreenImage imageSrc={'neighborhood-8.jpg'} margin={'24px'} alt={'Park'}/>
      <FullscreenImage imageSrc={'neighborhood-9.jpg'} margin={'24px'} alt={'The Frick Collection'}/>
      <FullscreenImage imageSrc={'neighborhood-10.jpg'} margin={'24px'} alt={'The Frick Collection'}/>
      <FullscreenImage imageSrc={'neighborhood-11.jpg'} margin={'24px'}
                       alt={'Cooper Hewitt Smithsonian Design Museum'}/>
      <FullscreenImage imageSrc={'neighborhood-12.jpg'} margin={'24px'} alt={'Garden'}/>
      <FullscreenImage imageSrc={'neighborhood-46.jpg'} margin={'24px'} alt={'Ralph Lauren'}/>
      <FullscreenImage imageSrc={'neighborhood-13.jpg'} margin={'24px'} alt={'Ralph Lauren – Ralph’s Coffee'}/>
      <FullscreenImage imageSrc={'neighborhood-14.jpg'} margin={size.width <= 576 ? '80px' : ''}
                       alt={'The Bellemont – Neighborhood Garden'}/>
      <ContentImages className={'center'}>
        <FullscreenImage imageSrc={'neighborhood-15.jpg'} margin={'0'} alt={'The Bellemont - Neighborhood'}/>
        <FullscreenImage imageSrc={'neighborhood-16.jpg'} margin={'0'} alt={'The Bellemont - Neighborhood'}/>
      </ContentImages>
      <FullscreenImage imageSrc={'neighborhood-17.jpg'} margin={'24px'} alt={'Cake Shop'}/>
      <FullscreenImage imageSrc={'neighborhood-18.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-19.jpg'} margin={'24px'} alt={'Museum'}/>
      <FullscreenImage imageSrc={'neighborhood-20.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-21.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-22.jpg'} margin={size.width <= 576 ? '80px' : ''} alt={'Clothes Store'}/>
      <ContentImages>
        <section className="wrapper">
          <section className="leftCol">
            <FullscreenImage imageSrc={'neighborhood-23.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
            <FullscreenImage imageSrc={'neighborhood-25.jpg'} margin={'0'} alt={'The Bellemont - Neighborhood'}/>
          </section>
          <section className="rightCol">
            <FullscreenImage imageSrc={'neighborhood-24.jpg'} margin={'0'} alt={'The Bellemont - Neighborhood'}/>
          </section>
        </section>
      </ContentImages>
      <FullscreenImage imageSrc={'neighborhood-26.jpg'} margin={'24px'} alt={'Fountain'}/>
      <FullscreenImage imageSrc={'neighborhood-27.jpg'} margin={'24px'} alt={'Garden'}/>
      <FullscreenImage imageSrc={'neighborhood-28.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-29.jpg'} margin={'24px'} alt={'The Metropolitan Museum Of Art'}/>
      <FullscreenImage imageSrc={'neighborhood-30.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-31.jpg'} margin={'24px'} alt={'Restaurant'}/>
      <FullscreenImage imageSrc={'neighborhood-32.jpg'} margin={size.width <= 576 ? '80px' : ''}
                       alt={'Artifact Museum'}/>
      <FullscreenImage imageSrc={'neighborhood-33.jpg'} withPadding={'81.2%'} margin={'24px'} alt={'Museum'}/>
      <ContentImages className={'content-images-default start'}>
        <FullscreenImage imageSrc={'neighborhood-36.jpg'} alt={'Clothes Store'}/>
        <FullscreenImage imageSrc={'neighborhood-35.jpg'} alt={'The Metropolitan Museum Of Art'}/>
      </ContentImages>
      {/*<FullscreenImage imageSrc={'neighborhood-36.jpg'} margin={'24px'}/>*/}
      <FullscreenImage imageSrc={'neighborhood-37.jpg'} margin={'24px'} alt={'Solomon R. Guggenheim Museum'}/>
      <FullscreenImage imageSrc={'neighborhood-38.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-39.jpg'} margin={size.width <= 576 ? '80px' : ''} alt={'Restaurant'}/>
      <ContentImages className={'center'}>
        <FullscreenImage imageSrc={'neighborhood-40.jpg'} margin={'0'} alt={'Restaurant'}/>
        <FullscreenImage imageSrc={'neighborhood-41.jpg'} margin={'0'} alt={'Restaurant'}/>
      </ContentImages>
      <FullscreenImage imageSrc={'neighborhood-42.jpg'} margin={'24px'} alt={'Garden'}/>
      <FullscreenImage imageSrc={'neighborhood-43.jpg'} margin={'24px'} alt={'Fountain'}/>
      <FullscreenImage imageSrc={'neighborhood-44.jpg'} margin={'24px'} alt={'Restaurant'}/>
      <FullscreenImage imageSrc={'neighborhood-45.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-47.jpg'} margin={'24px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-48.jpg'} margin={'24px'} alt={'Loyola School'}/>
      <FullscreenImage imageSrc={'neighborhood-49.jpg'} margin={size.width <= 576 ? '24px' : '160px'}
                       alt={'Jacqueline Onassis Reservoir'}/>
      <FullscreenImage imageSrc={'neighborhood-50.jpg'} withPadding={'81.2%'}
                       margin={size.width <= 576 ? '24px' : '160px'} alt={'The Bellemont - Neighborhood'}/>
      <FullscreenImage imageSrc={'neighborhood-51.jpg'} margin={'24px'} alt={'Jogging Par'}/>
      <FullscreenImage imageSrc={'neighborhood-52.jpg'} margin={'0'} alt={'The Bellemont - Neighborhood'}/>
    </NeighborhoodContentSection>
  );
};

export default NeighborhoodContent;
