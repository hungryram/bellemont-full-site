import React, { FC, useRef } from 'react';
import {
  FullViewWrapper,
  FullViewContainer,
  FullViewContent,
  ButtonScroll,
  ArrowDown
} from './index.styled';
import FullscreenImage from '../../../fullscreen-image';
import scrollTo from '../../../../functions/scroll-to';

const IntroAboutImage: FC = () => {

  const fullViewWrapper = useRef<HTMLDivElement>(null);
  const fullViewContainer = useRef<HTMLDivElement>(null);

  return (
    <FullViewWrapper ref={fullViewWrapper} id={'intro-about-image'} className={'intro-section'}>
      <FullViewContainer ref={fullViewContainer}>
        <FullViewContent>
          <FullscreenImage imageSrc={'4.png'} position={'84%'}/>
          <ButtonScroll onClick={() => {
            scrollTo(4);
          }}>
            <ArrowDown/>
          </ButtonScroll>
        </FullViewContent>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroAboutImage;
