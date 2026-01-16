import React, { FC, useEffect, useRef } from 'react';
import {
  FullViewWrapper,
  FullViewContainer,
  Text,
  ButtonScroll,
  ArrowDown
} from './index.styled';
import scrollTo from '../../../functions/scroll-to';
import {ScrollTrigger} from "gsap/ScrollTrigger";
import gsap from "gsap";

const IntroStart: FC = () => {
  const wrapperRef = useRef<HTMLDivElement>(null);
  const headingRef = useRef<HTMLHeadingElement>(null);
  const heading2Ref = useRef<HTMLHeadingElement>(null);
  const btnRef = useRef<HTMLDivElement>(null);

  useEffect(() => {
    ScrollTrigger.create({
      trigger: wrapperRef?.current || '',
      toggleActions: 'play none none reverse',
      start: 'top bottom',
      animation: gsap
        .timeline()
        .fromTo(
          headingRef?.current || null,
          1,
          { opacity: 0, y: 80 },
          { opacity: 1, y: 0 },
          '+=.5'
        )
        .fromTo(
          heading2Ref?.current || null,
          1,
          { opacity: 0, y: 40 },
          { opacity: 1, y: 0 },
          '+=.15'
        )
        .fromTo(
          btnRef?.current || null,
          1,
          { opacity: 0, y: 80 },
          { opacity: 1, y: 0 },
          '+=.15'
        ),
    });
  }, []);

  return (
    <FullViewWrapper id={'intro-start'} className={'intro-section'} ref={wrapperRef}>
      <FullViewContainer>
        <Text>
          <h1 ref={headingRef}>The Bellemont</h1>
          <h3 ref={heading2Ref}>1165 madison avenue</h3>
        </Text>
        <ButtonScroll ref={btnRef} onClick={() => {
          scrollTo(1);
        }}>
          Enter
          <ArrowDown/>
        </ButtonScroll>
      </FullViewContainer>
    </FullViewWrapper>
  );
};

export default IntroStart;
