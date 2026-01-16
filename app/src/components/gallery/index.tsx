import React, { FC, useContext, useState } from 'react';
import { Context } from '../../context';
import { StyledGallery, CloseGallery } from './index.styled';
import FullscreenImage from '../fullscreen-image';
import closeImg from '../../assets/icons/icon-close-dark.svg';

const ImageGallery: FC = () => {

  const {handleGalleryClose, gallery} = useContext(Context)

  return (
    <StyledGallery>
      <CloseGallery onClick={handleGalleryClose}>
        <img src={closeImg} alt="close"/>
      </CloseGallery>
      <FullscreenImage imageSrc={gallery.imageSrc} margin={'0'}/>
    </StyledGallery>
  );
};

export default ImageGallery;
