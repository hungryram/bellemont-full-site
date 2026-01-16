import styled from "styled-components";
import { mediaMax } from "../../../../helpers/MediaQueries";

export const ContactFormWrapper = styled.form`
  max-width: 488px;
  margin: 0 auto 54px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  padding: 0 24px;
  .w-70 {
    width: calc(100% / 3 * 2 - 12px);
    ${mediaMax.phoneXL`
      width: 100%;
    `}
  }

  .w-50 {
    width: calc(50% - 12px);
  }

  .w-30 {
    width: calc(100% / 3 - 16px);
    ${mediaMax.phoneXL`
      width: 100%;
    `}
  }

  ${mediaMax.phoneXL`
    padding: 0;
    .wm-50 {
      width: calc(50% - 12px);
    }
  `}
`;
export const FormButton = styled.button`
  background: transparent;
  border: none;
  border-bottom: 4px solid black;
  text-align: center;
  font: normal normal 600 16px/24px Couture;
  letter-spacing: 1.12px;
  color: #000;
  display: flex;
  justify-content: center;
  margin: 0 20px 0 auto;
  cursor: pointer;
  text-transform: uppercase;
  padding: 0;
  position: relative;
  &:after {
    content: '';
    position: absolute;
    right: -20px;
    top: 8px;
    border-width: 4px 4px 4px 8px;
    border-style: solid;
    border-color: transparent transparent transparent black;
    border-image: initial;
  }
`;
