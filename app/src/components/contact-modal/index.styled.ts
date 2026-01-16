import styled from 'styled-components';

export const ContactModalWrapper = styled.div`
  width: 100vw;
  min-height: 100vh;
  position: fixed;
  top: 0;
  right: 0;
  left: 0;
  bottom: 0;
  background: #292929;
  opacity: 0;
  display: none;
  transition: opacity 0.3s linear;
  pointer-events: auto;

  z-index: 999;
  overflow-y: scroll;
  overflow-x: hidden;

  > a {
    position: absolute;
  }
`;
export const ContactModalCloseIcon = styled.div`
  position: absolute;
  right: 38px;
  top: 45px;
  width: 20px;
  height: 20px;
  opacity: 0.7;
  cursor: pointer;
  transition: opacity 0.3s;
  will-change: opacity;

  &:hover {
    opacity: 1;
  }

  &:before,
  &:after {
    position: absolute;
    left: 50%;
    content: " ";
    height: 24px;
    width: 2px;
    background-color: #606060;
  }

  &:before {
    transform: rotate(45deg);
  }

  &:after {
    transform: rotate(-45deg);
  }
`;
