import React from 'react';
import {
  AmenitiesContentSection,
  AmenitiesContentContainer,
} from './index.styled';
import FullscreenImage from '../../fullscreen-image';

const AmenitiesContent = () => {
  return (
    <AmenitiesContentSection>
      <AmenitiesContentContainer>
        <FullscreenImage imageSrc={'amenities-2.jpg'} withPadding={'63%'} increase={true}
                         alt={'The Bellemont Residence'}/>
        <FullscreenImage imageSrc={'amenities-3.jpg'} withPadding={'79.4%'} increase={true} alt={'Theatre'}/>
        <FullscreenImage imageSrc={'amenities-4.jpg'} withPadding={'79.4%'} increase={true} alt={'Badminton Court'}/>
        <FullscreenImage imageSrc={'amenities-5.jpg'} increase={true} alt={'Gym'}/>
        <FullscreenImage imageSrc={'amenities-6.jpg'} withPadding={'79.4%'} margin={'0'} increase={true}
                         alt={'Kids Play Area'}/>
      </AmenitiesContentContainer>
    </AmenitiesContentSection>
  );
};

export default AmenitiesContent;
