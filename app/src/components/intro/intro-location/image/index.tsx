import React, { FC, useRef } from 'react';
import {
  ArrowDown,
  ButtonScroll,
  FullViewContainer,
  FullViewContent,
  FullViewWrapper,
  PageGradient,
} from './index.styled';
import FullscreenImage from '../../../fullscreen-image';
import scrollTo from '../../../../functions/scroll-to';
import { PositionVariant } from '../../../../interfaces/fullscreen-image-props.interface';

const IntroLocationImage: FC = () => {

  const fullViewWrapper = useRef<HTMLDivElement>(null);
  const fullViewContainer = useRef<HTMLDivElement>(null);

  return (
    <FullViewWrapper ref={fullViewWrapper} id={'intro-location-image'} className={'intro-section'}>
      <FullViewContainer ref={fullViewContainer}>
        <FullViewContent>
          <PageGradient/>
          <FullscreenImage imageSrc={'5.png'} position={'45%'}/>
          <ButtonScroll onClick={() => {
            scrollTo(6);
          }}>
            <ArrowDown/>
          </ButtonScroll>
        </FullViewContent>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroLocationImage;
