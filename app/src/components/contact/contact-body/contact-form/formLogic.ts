import React, { useState } from "react";
import { FormFieldsProps } from "../../../../interfaces/form-fields-props";

const FormLogic = () => {
  const [inputs, setInputs] = useState<FormFieldsProps>({
    firstName: "",
    lastName: "",
    address: "",
    city: "",
    state: "",
    zip: "",
    email: "",
    phone: "",
    bedroomType: "",
    priceRange: "",
    howHear: "",
    isBroker: "",
    brokerageFirm: "",
    clientName: "",
    notes: "",
  });
  const placeholders: any = {
    firstName: "First name",
    lastName: "Last name",
    address: "Address",
    city: "City",
    state: "State",
    zip: "Zip",
    email: "Email",
    phone: "Telephone",
    bedroomType: "Bedroom type",
    priceRange: "Price range",
    howHear: "How did you hear about us?",
    isBroker: "Are you a broker?",
    brokerageFirm: "Brokerage firm",
    clientName: "Client Name",
    notes: "Notes",
  };
  const errorsFields: string[] = [
    "firstName",
    "lastName",
    "zip",
    "email",
    "phone",
    "howHear",
    "isBroker",
    "brokerageFirm",
  ];
  const [errors, setErrors] = useState<any>({
    firstName: false,
    lastName: false,
    zip: false,
    email: false,
    phone: false,
    howHear: false,
    isBroker: false,
    brokerageFirm: false,
  });
  const [submitted, setFormSubmitted] = useState<boolean>(false);
  const [sent, setFormSent] = useState<boolean>(false);

  const generateMessageData = () => {
    let text = "";
    for (const [key, value] of Object.entries(inputs)) {
      if (value !== "") {
        text += `\n` + placeholders[key] + `: ` + value;
      }
    }
    return text;
  };

  const validateForm = (inputsData: any) => {
    const errorsState: any = {};
    errorsFields.map((el) => {
      if (
        el === "email" &&
        !/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i.test(inputsData[el])
      )
        errorsState[el] = true;
      else if (
        el === "brokerageFirm" &&
        inputsData.isBroker === "Yes" &&
        inputsData[el] === ""
      )
        errorsState[el] = true;
      else if (el !== "brokerageFirm" && inputsData[el] === "")
        errorsState[el] = true;
    });
    return errorsState;
  };
  const validateField = (
    event: React.ChangeEvent<
      HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement
    >
  ) => {
    let errorsState = errors;
    if (event.target.name === "email") {
      errorsState = {
        ...errorsState,
        [event.target.name]: !/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,}$/i.test(
          event.target.value
        ),
      };
    } else {
      errorsState = {
        ...errorsState,
        [event.target.name]: event.target.value === "",
      };
    }
    setErrors(errorsState);
  };

  const handleSubmit = (event: React.FormEvent) => {
    event.preventDefault();
    const newErrors = validateForm(inputs);
    setErrors(newErrors);
    if (Object.keys(newErrors).length === 0) {
      setFormSent(true);
      fetch("/api/contact-form", {
        method: "POST",
        headers: {
          Accept: "application/json",
          "Content-Type": "application/json",
        },
        body: JSON.stringify(inputs),
      })
        .then((response) => response.json())
        .then(() => {
          setFormSubmitted(true);
          setFormSent(false);
          setInputs({
            firstName: "",
            lastName: "",
            priceRange: "",
            address: "",
            city: "",
            state: "",
            zip: "",
            email: "",
            phone: "",
            bedroomType: "",
            howHear: "",
            isBroker: "",
            brokerageFirm: "",
            clientName: "",
            notes: ""
          });
        })
        .catch((error) => {
          console.log("error sending email ", error);
          setFormSent(false);
        });
    }
  };

  const handleChange = (
    event: React.ChangeEvent<
      HTMLInputElement | HTMLSelectElement | HTMLTextAreaElement
      >
  ) => {
    event.persist();
    validateField(event);
    setInputs((oldInputs: FormFieldsProps) => ({
      ...oldInputs,
      [event.target.name]: event.target.value,
    }));
  };

  return {
    handleSubmit,
    handleChange,
    inputs,
    submitted,
    sent,
    errors,
    placeholders,
  };
};

export default FormLogic;
