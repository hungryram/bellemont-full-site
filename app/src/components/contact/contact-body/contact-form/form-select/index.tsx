import React, { FC, useEffect, useRef } from "react";
import {
  FormSelectError,
  FormSelectOptionStyled,
  FormSelectStyled,
  FormSelectWrapper,
} from "./index.styled";
import { FormSelectProps } from "../../../../../interfaces/form-select-props";

const FormSelect: FC<FormSelectProps> = ({
  name,
  placeholder,
  onChange,
  error,
  values,
  required = false,
  className = "",
  resetSelect,
}) => {
  const formSelectRef = useRef<HTMLSelectElement>(null);
  useEffect(() => {
    if (resetSelect === "" && formSelectRef && formSelectRef.current) {
      formSelectRef.current.selectedIndex = 0;
    }
  }, [resetSelect]);
  return (
    <FormSelectWrapper className={className}>
      <FormSelectStyled
        name={name}
        onChange={onChange}
        defaultValue={""}
        error={error}
        ref={formSelectRef}
      >
        <FormSelectOptionStyled value="" disabled={true} hidden={true}>
          {(required ? "*" : "") + placeholder}
        </FormSelectOptionStyled>
        {values.map((el: any) => (
          <FormSelectOptionStyled key={el.id} value={el.value}>
            {el.value}
          </FormSelectOptionStyled>
        ))}
      </FormSelectStyled>
      {required && error && <FormSelectError>Required field</FormSelectError>}
    </FormSelectWrapper>
  );
};

export default FormSelect;
