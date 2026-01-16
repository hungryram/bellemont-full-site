import React, { FC } from "react";
import {
  FormInputError,
  FormInputStyled,
  FormInputWrapper,
  FormTextareaStyled,
} from "./index.styled";
import { FormInputProps } from "../../../../../interfaces/form-input-props";

const FormInput: FC<FormInputProps> = ({
  name,
  placeholder,
  onChange,
  value = "",
  error = false,
  required = false,
  className = "",
  type = "text",
}) => {
  return (
    <FormInputWrapper className={className}>
      {type !== "textarea" ? (
        <FormInputStyled
          type={type}
          name={name}
          onChange={onChange}
          value={value}
          error={error}
          placeholder={(required ? "*" : "") + placeholder}
        />
      ) : (
        <FormTextareaStyled
          name={name}
          onChange={onChange}
          value={value}
          error={error}
          placeholder={(required ? "*" : "") + placeholder}
        />
      )}
      {required && error && <FormInputError>Required field</FormInputError>}
    </FormInputWrapper>
  );
};

export default FormInput;
