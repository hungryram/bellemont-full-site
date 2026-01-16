import React, { FC, useState } from "react";
import {
  ContactFormContainer,
  ContactText,
  ContactThanks,
} from "./index.styled";
import ContactForm from "./contact-form";

const ContactBody: FC = () => {
  const [submitted, setSubmitted] = useState<boolean>(false);

  const showSuccess = () => {
    setSubmitted(true);
  };

  return (
    <ContactFormContainer>
        {submitted ? (
          <ContactThanks className={"thanks-text"}>
            <h5>Thank you for registering.</h5>
            <p>Our sales team will be in touch.</p>
          </ContactThanks>
        ) : (
          <>
            <ContactText>REGISTER FOR MORE INFORMATION</ContactText>
            <ContactForm showSuccess={showSuccess} />
          </>
        )}
    </ContactFormContainer>
  );
};

export default ContactBody;
