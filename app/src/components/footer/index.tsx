import React, { FC, useMemo } from 'react';
import {
  FooterSection,
  FooterMenu,
  FooterAddress,
  FooterLink,
  FooterLinkPDF,
  TopLine,
  BottomLine,
  BottomCopyright
} from './index.styled';
import sop from '../../files/NY-StandardOperatingProcedures.pdf';
import { FooterPropsInterface } from '../../interfaces/footer-props.interface';
import { NavigationFooterMenu } from '../../constants/content/navigation.const';
import { graphql, useStaticQuery } from 'gatsby';
const Footer: FC<FooterPropsInterface> = ({ street, city, code, phone, phoneText, email }) => {
  const currentYear = useMemo(() => new Date().getFullYear(), [])

  const data = usePdfFileQuery();
  return (
    <FooterSection>
      <FooterMenu>
        {NavigationFooterMenu.length > 0 &&
        NavigationFooterMenu.map((menuItem, i) => (
          <FooterLink to={menuItem.link} key={i}>{menuItem.name}</FooterLink>
        ))
        }
        <FooterLinkPDF href={"https://dos.ny.gov/system/files/documents/2021/08/fairhousingnotice.pdf"} download={true} target={'_blank'}>FAIR HOUSING NOTICE</FooterLinkPDF>
        <FooterLinkPDF href={sop} target={'_blank'}>Standard Operating Procedures</FooterLinkPDF>
      </FooterMenu>
      <FooterAddress>
        <TopLine>
          <span>{street}</span>
          <span>{city}</span>
          <span>{code}</span>
        </TopLine>
        <BottomLine>
          <a href={`tel:${phone}`} className={'footer-phone'}>{phoneText}</a>
          <a href={`mailto:${email}`}>{email}</a>
        </BottomLine>
        <BottomCopyright>COPYRIGHT &copy; {currentYear} The Bellemont. ALL RIGHTS RESERVED.</BottomCopyright>
      </FooterAddress>
    </FooterSection>
  );
};

export default Footer;

const usePdfFileQuery = () => {
  return useStaticQuery(
    graphql`
      query PdfFileQuery {
        file(extension: {eq: "pdf"}) {
          publicURL
        }
      }
    `
  );
};
