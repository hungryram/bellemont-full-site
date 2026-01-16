import React, { FC, useState, useEffect, useRef } from 'react';
import Header from '../header';
import Footer from '../footer';
import { GlobalStyle } from './index.styled';
import { ILayoutProps } from '../../interfaces/layout-props.interface';
import { LayoutWrapper, PageWrapper } from './index.styled';
import gsap from 'gsap';
import { ScrollToPlugin } from 'gsap/ScrollToPlugin';
import { ScrollTrigger } from 'gsap/ScrollTrigger';
import footerData from '../../constants/content/footer.const';
import { Context } from '../../context';
import Seo from '../seo';
import ImageGallery from '../gallery';
import { CSSPlugin } from 'gsap/CSSPlugin';

gsap.registerPlugin(ScrollToPlugin, ScrollTrigger, CSSPlugin);
gsap.config({
  nullTargetWarn: false,
});

const MainLayout: FC<ILayoutProps> = ({ children, location }) => {

  const [gallery, setGallery] = useState<any>({ show: false });
  const [isScroll, setIsScroll] = useState<boolean>(true)
  const [isFirstLoad, setIsFirstLoad] = useState<boolean>(true)

  const handleGalleryOpen = ({ imageSrc }: any) => {
    setGallery(({ show }: any) => (
      {
        show: true,
        imageSrc,
      }
    ));
  };

  const handleGalleryClose = () => {
    setIsScroll(true);
    setGallery({ show: false });
  };

  return (
    <Context.Provider value={{
      handleGalleryOpen, handleGalleryClose, setIsScroll, gallery, setIsFirstLoad, isFirstLoad
    }}>
      <PageWrapper>
        <Seo/>
        <GlobalStyle isScroll={isScroll} location={location}/>
        {!location.pathname.includes('legal') && <Header location={location}/>}
        <LayoutWrapper id="layoutWrapper">
          {children}
        </LayoutWrapper>
        <Footer {...footerData} />
        {gallery.show && <ImageGallery/>}
      </PageWrapper>
    </Context.Provider>
  );
};
export default MainLayout;
