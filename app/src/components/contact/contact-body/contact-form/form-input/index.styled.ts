import styled from "styled-components";

export const FormInputWrapper = styled.div`
  position: relative;
  width: 100%;
  margin: 0 0 24px;
`;

export const FormInputStyled = styled.input`
  border: 1px solid
    ${(props: { error: boolean }) => (props.error ? "red" : "#707070")};
  width: 100%;
  display: flex;
  padding: 4px 14px 0;
  text-align: left;
  font: normal normal 300 14px/22px Adobe Garamond Pro;
  letter-spacing: 0.14px;
  color: #1a1818;
  border-radius: 0;
  background-color: #FDF7E2;
  outline: none;
  align-items: center;
  height: 40px;
  &::placeholder {
    opacity: 1;
  }
`;
export const FormTextareaStyled = styled.textarea`
  border: 1px solid
    ${(props: { error: boolean }) => (props.error ? "red" : "#707070")};
  width: 100%;
  height: 100%;
  max-width: 100%;
  min-width: 100%;
  max-height: 300px;
  display: flex;
  text-align: left;
  font: normal normal 300 14px/22px Adobe Garamond Pro;
  letter-spacing: 0.14px;
  color: #1a1818;
  border-radius: 0;
  background-color: #FDF7E2;
  outline: none;
  margin: 0 0 24px;
  min-height: 70px;
  padding: 10px 14px;
  align-items: flex-start;
  &::placeholder {
    opacity: 1;
  }
`;

export const FormInputError = styled.div`
  position: absolute;
  font: normal normal 300 12px/12px Adobe Garamond Pro;
  letter-spacing: 0.14px;
  color: red;
  right: 0;
  bottom: -15px;
`;
