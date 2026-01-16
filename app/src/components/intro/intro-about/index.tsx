import React, { FC, useRef } from 'react';
import {
  Text,
  FullViewWrapper,
  FullViewContainer,
  FullViewContent,
  ButtonScroll,
  ArrowDown,
} from './index.styled';
import scrollTo from '../../../functions/scroll-to';

const IntroAbout: FC = () => {

  const fullViewWrapper = useRef<HTMLDivElement>(null);
  const fullViewContainer = useRef<HTMLDivElement>(null);

  return (
    <FullViewWrapper ref={fullViewWrapper} id={'intro-about'} className={'intro-section'}>
      <FullViewContainer ref={fullViewContainer}>
        <FullViewContent>
          <Text>
            <h2>
              <span>THE BELLEMONT IS A RESIDENTIAL </span>
              <span>MASTERPIECE LOCATED IN THE MOST </span>
              <span>DESIRABLE PART OF THE UPPER EAST SIDE. </span>
              <span>COMPRISED OF A LIMITED COLLECTION OF </span>
              <span>TWELVE ELEGANT RESIDENCES, THIS </span>
              <span>REMARKABLE LIMESTONE BUILDING IS JUST </span>
              <span>ONE BLOCK FROM CENTRAL PARK. </span>
            </h2>
          </Text>
          <ButtonScroll onClick={() => {
            scrollTo(3);
          }}>
            <ArrowDown/>
          </ButtonScroll>
        </FullViewContent>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroAbout;
