import React from 'react';
import useWindowSize from '../helpers/UseWindowSize';
import ContactBody from '../components/contact/contact-body';
import ContactInfo from '../components/contact/contact-info';
import PageLabel from '../components/page-label';
import { ContactPage } from '../styles/contacts.styled';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import { HeaderBackground } from '../styles/default-page.styled';

const Contact = () => {
  const size = useWindowSize();

  return (
    <ContactPage>
      <HeaderBackground />
      <PageLabel name={"Contact"} type={TypeVariant.small} fixed={true}/>
      {size.width > 1025 && <ContactInfo />}
      <ContactBody />
      {size.width <= 1025 && <ContactInfo />}
    </ContactPage>
  );
};

export default Contact;
