import React, { FC, useEffect } from 'react';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import gsap from 'gsap';

import IntroStart from './intro-start/index';
import IntroStartImage from './intro-start/image';
import IntroAbout from './intro-about';
import IntroAboutImage from './intro-about/image';
import IntroLocation from './intro-location';
import IntroLocationImage from './intro-location/image';
import IntroQuotes from './intro-quotes';

import { IntroWrapper } from './index.styled';

const Intro: FC = () => {

  useEffect(() => {
    const sections = gsap.utils.toArray('.intro-section');
    let currentSection: any = sections[0];
    let currentSectionImage: any = currentSection.querySelector('img');
    gsap.defaults({ overwrite: 'auto', duration: 1 });

    gsap.set('#intro-wrapper', { height: (sections.length * 100) + 'vh' });

    sections.forEach((section: any, i) => {
      const image = section.querySelector('img');
      ScrollTrigger.create({
        start: () => (i - 0.5) * innerHeight,
        end: () => (i + 0.5) * innerHeight,
        onToggle: self => self.isActive && setSection(section, image)
      });
    });

    function setSection(newSection: any, newImage: any) {
      if (newSection !== currentSection) {
        gsap.to(currentSection, { autoAlpha: 0, pointerEvents: 'none' });
        gsap.to(currentSectionImage || null, { transform: 'scale(1)' });
        gsap.to(newSection, { autoAlpha: 1, pointerEvents: 'auto' });
        gsap.to(newImage || null, { transform: 'scale(1)' });
        currentSection = newSection;
        currentSectionImage = newImage;
      }
    }
  }, []);

  return (
    <IntroWrapper id={'intro-wrapper'}>
      <IntroStart/>
      <IntroStartImage/>
      <IntroAbout/>
      <IntroAboutImage/>
      <IntroLocation/>
      <IntroLocationImage/>
      <IntroQuotes/>
    </IntroWrapper>
  );
};

export default Intro;
