import React, { FC, useEffect } from "react";
import FormInput from "./form-input";
import FormSelect from "./form-select";
import { ContactFormWrapper, FormButton } from "./index.styled";
import FormLogic from "./formLogic";

const contactSelectData = {
  states: [
    {
      id: 1,
      value: "Alabama",
    },
    {
      id: 2,
      value: "Alaska",
    },
    {
      id: 3,
      value: "Arizona",
    },
    {
      id: 4,
      value: "Arkansas",
    },
    {
      id: 5,
      value: "California",
    },
    {
      id: 6,
      value: "Colorado",
    },
    {
      id: 7,
      value: "Connecticut",
    },
    {
      id: 8,
      value: "Delaware",
    },
    {
      id: 9,
      value: "Florida",
    },
    {
      id: 10,
      value: "Georgia",
    },
    {
      id: 11,
      value: "Hawaii",
    },
    {
      id: 12,
      value: "Idaho",
    },
    {
      id: 13,
      value: "Illinois",
    },
    {
      id: 14,
      value: "Indiana",
    },
    {
      id: 15,
      value: "Iowa",
    },
    {
      id: 16,
      value: "Kansas",
    },
    {
      id: 17,
      value: "Kentucky",
    },
    {
      id: 18,
      value: "Louisiana",
    },
    {
      id: 19,
      value: "Maine",
    },
    {
      id: 20,
      value: "Maryland",
    },
    {
      id: 21,
      value: "Massachusetts",
    },
    {
      id: 22,
      value: "Michigan",
    },
    {
      id: 23,
      value: "Minnesota",
    },
    {
      id: 24,
      value: "Mississippi",
    },
    {
      id: 25,
      value: "Missouri",
    },
    {
      id: 26,
      value: "Montana",
    },
    {
      id: 27,
      value: "Nebraska",
    },
    {
      id: 28,
      value: "Nevada",
    },
    {
      id: 29,
      value: "New Hampshire",
    },
    {
      id: 30,
      value: "New Jersey",
    },
    {
      id: 31,
      value: "New Mexico",
    },
    {
      id: 32,
      value: "New York",
    },
    {
      id: 33,
      value: "North Carolina",
    },
    {
      id: 34,
      value: "North Dakota",
    },
    {
      id: 35,
      value: "Ohio",
    },
    {
      id: 36,
      value: "Oklahoma",
    },
    {
      id: 37,
      value: "Oregon",
    },
    {
      id: 38,
      value: "Pennsylvania",
    },
    {
      id: 39,
      value: "Rhode Island",
    },
    {
      id: 40,
      value: "South Carolina",
    },
    {
      id: 41,
      value: "South Dakota",
    },
    {
      id: 42,
      value: "Tennessee",
    },
    {
      id: 43,
      value: "Texas",
    },
    {
      id: 44,
      value: "Utah",
    },
    {
      id: 45,
      value: "Vermont",
    },
    {
      id: 46,
      value: "Virginia",
    },
    {
      id: 47,
      value: "Washington",
    },
    {
      id: 48,
      value: "West Virginia",
    },
    {
      id: 49,
      value: "Wisconsin",
    },
    {
      id: 50,
      value: "Wyoming",
    },
  ],
  bedroomType: [
    {
      id: 1,
      value: "3 Bedroom",
    },
    {
      id: 2,
      value: "4 Bedrooms",
    },
    {
      id: 3,
      value: "5+ Bedrooms",
    },
  ],
  priceRange: [
    {
      id: 1,
      value: "$1-2 million",
    },
    {
      id: 2,
      value: "$2-4 million",
    },
    {
      id: 3,
      value: "$3-5 million",
    },
    {
      id: 4,
      value: "$5-10 million",
    },
    {
      id: 5,
      value: "$10 million or higher",
    },
  ],
  howHear: [
    {
      id: 1,
      value: "Broker",
    },
    {
      id: 2,
      value: "Sales Team Outreach",
    },
    {
      id: 3,
      value: "Compass Referral",
    },
    {
      id: 4,
      value: "Compass.com",
    },
    {
      id: 5,
      value: "Eblast",
    },
    {
      id: 6,
      value: "Google",
    },
    {
      id: 7,
      value: "Instagram",
    },
    {
      id: 8,
      value: "Live/Work in Neighborhood",
    },
    {
      id: 9,
      value: "Mailing",
    },
    {
      id: 10,
      value: "New York Times",
    },
    {
      id: 11,
      value: "Press",
    },
    {
      id: 12,
      value: "Project Website",
    },
    {
      id: 13,
      value: "Referral",
    },
    {
      id: 14,
      value: "Signage",
    },
    {
      id: 15,
      value: "Sponsored Post",
    },
    {
      id: 16,
      value: "Streeteasy.com",
    },
    {
      id: 17,
      value: "The Real Deal",
    },
    {
      id: 18,
      value: "Word of Mouth",
    },
  ],
  isBroker: [
    {
      id: 1,
      value: "Yes",
    },
    {
      id: 2,
      value: "No",
    },
  ],
};

const ContactForm: FC<any> = ({ showSuccess }) => {
  const {
    inputs,
    handleChange,
    handleSubmit,
    errors,
    placeholders,
    submitted,
    sent,
  } = FormLogic();

  useEffect(() => {
    if (submitted) showSuccess();
    // eslint-disable-next-line
  }, [submitted]);
  return (
    <ContactFormWrapper onSubmit={handleSubmit}>
      <FormInput
        type="text"
        name="firstName"
        className="w-50"
        value={inputs.firstName}
        placeholder={placeholders.firstName}
        error={errors.firstName}
        onChange={handleChange}
        required={true}
      />
      <FormInput
        type="text"
        name="lastName"
        className="w-50"
        value={inputs.lastName}
        placeholder={placeholders.lastName}
        error={errors.lastName}
        onChange={handleChange}
        required={true}
      />
      <FormInput
        type="text"
        name="address"
        value={inputs.address}
        placeholder={placeholders.address}
        error={errors.address}
        onChange={handleChange}
      />
      <FormInput
        type="text"
        name="city"
        className="w-30"
        value={inputs.city}
        placeholder={placeholders.city}
        onChange={handleChange}
      />

      <FormSelect
        className="w-30 wm-50"
        name="state"
        placeholder={placeholders.state}
        onChange={handleChange}
        values={contactSelectData.states}
        resetSelect={inputs.state}
      />
      <FormInput
        type="text"
        name="zip"
        className="w-30 wm-50"
        value={inputs.zip}
        placeholder={placeholders.zip}
        error={errors.zip}
        onChange={handleChange}
        required={true}
      />
      <FormInput
        type="email"
        name="email"
        className="w-70"
        value={inputs.email}
        placeholder={placeholders.email}
        error={errors.email}
        onChange={handleChange}
        required={true}
      />
      <FormInput
        type="phone"
        name="phone"
        className="w-30"
        value={inputs.phone}
        placeholder={placeholders.phone}
        error={errors.phone}
        onChange={handleChange}
        required={true}
      />
      <FormSelect
        name="bedroomType"
        placeholder={placeholders.bedroomType}
        onChange={handleChange}
        values={contactSelectData.bedroomType}
        resetSelect={inputs.bedroomType}
      />
      <FormSelect
        name="howHear"
        placeholder={placeholders.howHear}
        onChange={handleChange}
        values={contactSelectData.howHear}
        error={errors.howHear}
        required={true}
        resetSelect={inputs.howHear}
      />
      <FormSelect
        name="isBroker"
        placeholder={placeholders.isBroker}
        onChange={handleChange}
        values={contactSelectData.isBroker}
        error={errors.isBroker}
        required={true}
        resetSelect={inputs.isBroker}
      />
      {inputs.isBroker === "Yes" && (
        <>
          <FormInput
            type="text"
            name="brokerageFirm"
            value={inputs.brokerageFirm}
            placeholder={placeholders.brokerageFirm}
            error={errors.brokerageFirm}
            onChange={handleChange}
            required={true}
          />
          <FormInput
            type="text"
            name="clientName"
            value={inputs.clientName}
            placeholder={placeholders.clientName}
            onChange={handleChange}
          />
        </>
      )}
      <FormInput
        type="textarea"
        name="notes"
        value={inputs.notes}
        placeholder={placeholders.notes}
        onChange={handleChange}
      />
      <FormButton type={"submit"} disabled={sent}>
        Submit
      </FormButton>
    </ContactFormWrapper>
  );
};

export default ContactForm;
