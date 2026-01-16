import React, { FC, useRef } from 'react';
import { ArrowDown, ButtonScroll, FullViewContainer, FullViewContent, FullViewWrapper } from './index.styled';
import FullscreenImage from '../../../fullscreen-image';
import scrollTo from '../../../../functions/scroll-to';
import { PositionVariant } from '../../../../interfaces/fullscreen-image-props.interface';

const IntroStartImage: FC = () => {

  const fullViewWrapper = useRef<HTMLDivElement>(null);
  const fullViewContainer = useRef<HTMLDivElement>(null);

  return (
    <FullViewWrapper ref={fullViewWrapper} id={'intro-start-image'} className={'intro-section'}>
      <FullViewContainer ref={fullViewContainer}>
        <FullViewContent>
          <FullscreenImage imageSrc={'3.png'} position={'14%'}/>
          <ButtonScroll onClick={() => {
            scrollTo(2);
          }}>
            <ArrowDown/>
          </ButtonScroll>
        </FullViewContent>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroStartImage;
