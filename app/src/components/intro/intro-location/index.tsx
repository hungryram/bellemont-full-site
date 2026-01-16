import React, { FC, useRef } from 'react';

import {
  Text,
  FullViewWrapper,
  FullViewContainer,
  FullViewContent,
  ButtonScroll,
  ArrowDown
} from './index.styled';
import scrollTo from '../../../functions/scroll-to';

const IntroLocation: FC = () => {

  const fullViewWrapper = useRef<HTMLDivElement>(null);
  const fullViewContainer = useRef<HTMLDivElement>(null);

  return (
    <FullViewWrapper ref={fullViewWrapper} id={'intro-location'} className={'intro-section'}>
      <FullViewContainer ref={fullViewContainer}>
        <FullViewContent>
          <Text>
            <p>
              <span>Naftali Group brings together the talents of Robert A.M. Stern Architects and designer </span>
              <span>Achille Salvagni to create a new architectural legacy — a limestone and iron-work </span>
              <span>masterpiece of twelve unique homes at the corner of Madison Avenue and 86th Street in</span>
              <span>the most southern part of Carnegie Hill. </span>
            </p>
            <p>
              <span>The apartments’ grand and graceful proportions, soaring ceilings, and views of Central </span>
              <span>Park through monumental windows make vast residences a notable addition to the </span>
              <span>city’s architectural history and a rare opportunity to enjoy classic floor plans and details </span>
              <span>with the amenities of a modern building. </span>
            </p>
            <p>
              <span>The Bellemont is located on Madison Avenue, the most famous shopping and dining </span>
              <span>street in the world. It is also nestled in the heart of the Upper East Side, Manhattan’s </span>
              <span>most established residential neighborhood, adjacent to Museum Mile and at the center of </span>
              <span>the city’s finest education and cultural offerings. </span>
            </p>
          </Text>
          <ButtonScroll onClick={() => {
            scrollTo(5);
          }}>
            <ArrowDown/>
          </ButtonScroll>
        </FullViewContent>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroLocation;
