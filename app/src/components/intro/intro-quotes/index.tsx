import React, { FC, useRef } from 'react';
import { Link } from 'gatsby';
import {
  Text,
  Row,
  Author,
  FullViewWrapper,
  FullViewContainer,
  FullViewContent,
  ButtonScroll,
  ArrowRight,
} from './index.styled';
const IntroQuotes: FC = () => {

  const fullViewWrapper = useRef<HTMLDivElement>(null);
  const fullViewContainer = useRef<HTMLDivElement>(null);

  return (
    <FullViewWrapper ref={fullViewWrapper} id={'intro-quotes'} className={'intro-section'}>
      <FullViewContainer ref={fullViewContainer}>
        <FullViewContent>
          <Text>
            <Row>
              <h4>
                <span>“WELCOME TO THE BELLEMONT. WITH A BREATHTAKING </span>
                <span>HAND-LAID LIMESTONE FAÇADE, THE BELLEMONT IS A TRUE </span>
                <span>ONCE-IN-A LIFETIME MASTERPIECE. </span>
                <span>THE SCALE, THE BUILDING, THE LOCATION - THERE IS </span>
                <span>NOTHING QUITE LIKE IT. OUR VISION WAS TO COMBINE THE </span>
                <span>TALENTS OF ROBERT A.M. STERN ARCHITECTS AND ACHILLE </span>
                <span>SALVAGNI TO CREATE A LIMITED COLLECTION OF HOMES.”</span>
              </h4>
              <h4>
                AN EYE FOR BEAUTY, AN INSISTENCE ON EXCELLENCE
              </h4>
              <Author>
                <span>Naftali Group, the global luxury real estate firm that has defined gorgeous living for over 33 years, </span>
                <span>brings a sister building of The Benson to the Upper East Side.</span>
              </Author>
            </Row>
            <Row>
              <h4>
                <span>“COMMANDING A PROMINENT GATEWAY SITE BETWEEN THE </span>
                <span>UPPER EAST SIDE AND CARNEGIE HILL, THE BELLEMONT </span>
                <span>WRAPS INVENTIVELY DETAILED FAÇADES AROUND CAREFULLY </span>
                <span>ORCHESTRATED, GRACIOUSLY SCALED APARTMENTS.”</span>
              </h4>
              <h4>
                A HALF-CENTURY OF ARCHITECTURAL DESIGN EXPERIENCE
              </h4>
              <Author>
                <span>Robert A.M. Stern Architects have designed New York’s most iconic residential buildings of our time: </span>
                <span>15 Central Park West, 220 Central Park South, 20 East End Avenue, and 520 Park Avenue.</span>
              </Author>
            </Row>
          </Text>
          <ButtonScroll>
            <Link to={'/architecture'}>
              The Architecture
              <ArrowRight/>
            </Link>
          </ButtonScroll>
        </FullViewContent>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroQuotes;
