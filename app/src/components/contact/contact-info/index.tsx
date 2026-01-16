import React, { FC } from "react";
import { ContactInfoWrapper, ContactInfoText, ContactInfoTextWrapper } from "./index.styled";

const ContactInfo: FC = () => {
  return (
    <ContactInfoWrapper className={'info'}>
      <ContactInfoTextWrapper>
        <ContactInfoText>
          <p>GENERAL INQUIRY</p>
          <a href={"tel:2127641165"}>212.764.1165</a>
          <a href="mailto:info@the-bellemont.com">info@the-bellemont.com</a>
        </ContactInfoText>
        <ContactInfoText>
          <p>SALES GALLERY</p>
          <p>BY APPOINTMENT ONLY</p>
          <p>817 MADISON AVENUE</p>
          <p>NEW YORK, NY 10065</p>
        </ContactInfoText>

        <ContactInfoText>
          <p>FOR PRESS INQUIRIES PLEASE CONTACT:</p>
          <p>ANNA LAPORTE</p>
          <p>M18 PUBLIC RELATIONS</p>
          <a href={"tel:2126040318"} className={'contact-phone'}>212-604-0318</a>
          <a href="mailto:anna@n18pr.com">ANNA@M18PR.COM</a>
        </ContactInfoText>
      </ContactInfoTextWrapper>
    </ContactInfoWrapper>
  );
};

export default ContactInfo;
