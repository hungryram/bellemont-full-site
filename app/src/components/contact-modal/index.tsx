import React, { FC, useEffect, useRef } from 'react';
import { ContactModalCloseIcon, ContactModalWrapper } from './index.styled';
import mainLogo from '../../images/main-logo.svg';
import { TimelineLite } from 'gsap';
import { IModalProps } from '../../interfaces/modal-props.interface';
import ContactBody from '../contact-body';
import { HeaderLogo } from '../../styles/common.styled';
import gsap from 'gsap';

const ContactModal: FC<IModalProps> = ({
                                         showModal,
                                         setCloseModal,
                                         setOpenLegal,
                                       }) => {
  const contactModalWrapperRef = useRef<HTMLDivElement>(null);
  const contactTimeline = new TimelineLite({ paused: true });
  useEffect(() => {
    const htmlEl = document.querySelector('html');
    const bodyEl = document.querySelector('body');
    if (showModal !== null && showModal) {
      contactTimeline
        .addLabel('afterFirstLine', '+=1')
        .fromTo(
          contactModalWrapperRef.current || {},
          0,
          { display: 'none' },
          { display: 'block' },
          'afterFirstLine'
        )
        .fromTo(
          contactModalWrapperRef.current || {},
          0.3,
          { opacity: 0 },
          { opacity: 1 },
          'afterFirstLine-=1'
        )
        .play();
      if (htmlEl) htmlEl.style.overflow = 'hidden';
      if (bodyEl) {
        bodyEl.style.overflowY = 'none';
        bodyEl.style.touchAction = 'none';
      }
    } else if (showModal !== null && !showModal) {
      contactTimeline
        .fromTo(
          contactModalWrapperRef.current || {},
          0.3,
          { opacity: 1 },
          { opacity: 0 }
        )
        .fromTo(
          contactModalWrapperRef.current || {},
          0.1,
          { display: 'block' },
          { display: 'none' },
          '+=.3'
        )
        .play();
      if (htmlEl) htmlEl.style.overflow = 'auto';
      if (bodyEl) {
        bodyEl.style.overflowY = 'auto';
        bodyEl.style.touchAction = 'auto';
      }
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [showModal]);

  const closeModal = () => {
    setCloseModal();
    gsap.timeline().to(window, {
      scrollTo: {
        y: 0,
        autoKill: false,
      },
      duration: 1.5,
      ease: 'slow(0.7, 0.7)',
    });
  };
  return (
    <ContactModalWrapper ref={contactModalWrapperRef}>
      <HeaderLogo onClick={closeModal}>
        <img src={mainLogo} alt="Main Logo"/>
      </HeaderLogo>
      <ContactModalCloseIcon onClick={() => setCloseModal()}/>
      <ContactBody setOpenLegal={setOpenLegal}/>
    </ContactModalWrapper>
  );
};

export default ContactModal;
