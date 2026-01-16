import styled from 'styled-components';

export const IntroWrapper = styled.div`
  .intro-section:not(:first-child) {
    opacity: 0;
    visibility: hidden;
    pointer-events: none;
  }

  .intro-section {
    position: fixed;
    width: 100%;
    top: 0;
    left: 0;
    height: 100%;
  }
`;
