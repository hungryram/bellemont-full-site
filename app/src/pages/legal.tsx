import React, { FC } from 'react';
import { navigate } from 'gatsby';
import legalData from '../constants/content/legal.const';
import {
  LegalWrapper,
  LegalLogo,
  LegalClose,
  LegalContentWrapper,
  LegalContentTitle,
  LegalContent,
  LegalContentBy,
  HeaderLogoTitle,
  HeaderLogoSubtitle,
} from '../styles/legal.styled';
import closeImg from '../assets/icons/icon-close-dark.svg';

const LegalPage: FC = () => {
  return (
    <LegalWrapper>
      <LegalLogo>
        <HeaderLogoTitle>{legalData.logoTitle}</HeaderLogoTitle>
        <HeaderLogoSubtitle>{legalData.logoSubtitle}</HeaderLogoSubtitle>
      </LegalLogo>
      <LegalClose onClick={() => navigate(-1)}>
        <img src={closeImg} alt="close"/>
      </LegalClose>
      <LegalContentWrapper>
        <LegalContentTitle>
          {legalData.contentTitle}
        </LegalContentTitle>
        <LegalContent>
          {legalData.content}
        </LegalContent>
        <LegalContentBy>
          {legalData.by}
        </LegalContentBy>
      </LegalContentWrapper>
    </LegalWrapper>
  );
};

export default LegalPage;
