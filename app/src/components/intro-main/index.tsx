import React, { useEffect, useRef, useContext } from "react";
import {
  HomeWrapper,
  HomeBackgroundImage,
  HomeMainBlock,
  ArrowDown,
  HomeTextBlock,
} from "./index.styled";
import heroImage from "../../assets/images/hero-image3_4.png";
import heroImageS from "../../assets/images/hero-image3_6.png";
import arrowDown from "../../assets/images/icon-arrow-down.svg";
import gsap from "gsap";
import { ScrollTrigger } from "gsap/ScrollTrigger";
import useWindowSize from '../../helpers/UseWindowSize';
import { Context } from '../../context';

const MainIntro = () => {
  const homeWrapperRef = useRef(null);
  const homeTextBlockRef = useRef(null);
  const homeMainBlockRef = useRef(null);
  const bgImageRef = useRef(null);
  const arrowDownRef = useRef(null);
  const homeBackgroundImageRef = useRef(null);
  const size = useWindowSize();
  const { setIsScroll, isFirstLoad, setIsFirstLoad, handleGalleryOpen } = useContext(Context);
  const tl = gsap.timeline();

  useEffect(() => {

    ScrollTrigger.create({
      trigger: homeWrapperRef?.current || "",
      start: "top top",
      end: "bottom top",
      scrub: 0.1,
      animation: gsap
        .timeline()
        .fromTo(
          "#sticky",
          .1,
          {position: "static", top: 0, pointerEvents: "none", zIndex: 1},
          {position: "static", pointerEvents: "all", zIndex: 1},
          "+=6"
        )
        .fromTo(
          homeBackgroundImageRef?.current || null,
          3,
          { backgroundColor: "#FDF7E2" },
          { backgroundColor: "transparent"},
          "-=5.5"
        )
        .fromTo(
          bgImageRef?.current || null,
          4,
          { objectPosition: "50% 0", scale: 1.2 },
          { objectPosition: "50% 100%", scale: 1 },
          "-=5.5"
        )
        .fromTo(
          homeTextBlockRef?.current || null,
          3,
          {top: "50%", transform: "translateY(-50%) scale(1)",  ease: "ease-out"},
          {top: "1.7%", transform: "translateY(0) scale(.5)", ease: "ease-out"},
          "-=5"
        )
        .fromTo(
          homeTextBlockRef?.current || null,
          .6,
          {opacity: 1,},
          {opacity: 0,},
          "-=1.8"
        )
        .fromTo(
          homeMainBlockRef?.current || null,
          3,
          { zIndex: 3 },
          { zIndex: -1},
        )
        .fromTo(
          arrowDownRef?.current || null,
          .6,
          {opacity: 1,},
          {opacity: 0,},
          "-=5"
        )
    });
  }, []);

  return (
    <HomeWrapper ref={homeWrapperRef} id={"sticky"}>
      <HomeBackgroundImage onClick={() => {
        handleGalleryOpen({ imageSrc: 'hero-image.jpg' });
        setIsScroll(false);
      }}>
        <div ref={homeBackgroundImageRef}/>
        <img ref={bgImageRef} src={size.width <= 768 ? heroImageS : heroImage} alt="hero image" />
      </HomeBackgroundImage>
      <HomeMainBlock ref={homeMainBlockRef}>
        <HomeTextBlock ref={homeTextBlockRef} className={"animate"}>
          <h1>The Bellemont</h1>
          <h3>1165 madison avenue</h3>
        </HomeTextBlock>
        <ArrowDown src={arrowDown} alt={"arrow icon"} ref={arrowDownRef} />
      </HomeMainBlock>
    </HomeWrapper>
  );
};

export default MainIntro;
