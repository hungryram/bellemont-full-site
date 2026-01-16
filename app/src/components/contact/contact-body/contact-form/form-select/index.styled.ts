import styled from "styled-components";

export const FormSelectWrapper = styled.div`
  position: relative;
  width: 100%;
  height: 40px;
  margin: 0 0 24px;
  &:after {
    content: "";
    position: absolute;
    right: 10px;
    top: 50%;
    transform: translateY(-50%);
    width: 0;
    height: 0;
    border-left: 5px solid transparent;
    border-right: 5px solid transparent;
    border-top: 5px solid #d9d4ce;
    pointer-events: none;
  }
`;

export const FormSelectStyled = styled.select`
  border: 1px solid
    ${(props: { error?: boolean }) => (props.error ? "red" : "#707070")};
  width: 100%;
  height: 100%;
  display: flex;
  text-align: left;
  font: normal normal 300 14px/22px Adobe Garamond Pro;
  letter-spacing: 0.14px;
  color: #1a1818;
  border-radius: 0;
  background-color: #FDF7E2;
  outline: none;
  align-items: center;
  appearance: none;
  position: relative;
  padding: 4px 14px 0;

  option:first-child {
    display: none;
  }
`;

export const FormSelectError = styled.div`
  position: absolute;
  font: normal normal 300 12px/12px Adobe Garamond Pro;
  letter-spacing: 0.14px;
  color: red;
  right: 0;
  bottom: -15px;
`;

export const FormSelectOptionStyled = styled.option`
  width: 100%;
  display: flex;
  padding: 4px 14px 0;
  text-align: left;
  font: normal normal 300 14px/22px Adobe Garamond Pro;
  letter-spacing: 0.14px;
  color: #1a1818;
  border-radius: 0;
  background: #fbf7f2;
  outline: none;
  align-items: center;
  height: 40px;
`;
