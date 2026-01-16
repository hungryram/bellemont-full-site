import styled, { createGlobalStyle } from 'styled-components';

import AGaramondProBoldotf from '../../fonts/Garamond/AGaramondPro-Bold.otf';
import AGaramondProBoldttf from '../../fonts/Garamond/AGaramondPro-Bold.ttf';
import AGaramondProBoldwoff from '../../fonts/Garamond/AGaramondPro-Bold.woff';
import AGaramondProItalicotf from '../../fonts/Garamond/AGaramondPro-Italic.otf';
import AGaramondProItalicttf from '../../fonts/Garamond/AGaramondPro-Italic.ttf';
import AGaramondProItalicwoff from '../../fonts/Garamond/AGaramondPro-Italic.woff';
import AGaramondProRegularotf from '../../fonts/Garamond/AGaramondPro-Regular.otf';
import AGaramondProRegularttf from '../../fonts/Garamond/AGaramondPro-Regular.ttf';
import AGaramondProRegularwoff from '../../fonts/Garamond/AGaramondPro-Regular.woff';
import AGaramondProSemiboldotf from '../../fonts/Garamond/AGaramondPro-Semibold.otf';
import AGaramondProSemiboldttf from '../../fonts/Garamond/AGaramondPro-Semibold.ttf';
import AGaramondProSemiboldwoff from '../../fonts/Garamond/AGaramondPro-Semibold.woff';
import CoutureRegularotf from '../../fonts/Garamond/Couture-Regular.otf';
import CoutureRegularttf from '../../fonts/Garamond/Couture-Regular.ttf';
import CoutureRegularwoff from '../../fonts/Garamond/Couture-Regular.woff';

export const GlobalStyle: any = createGlobalStyle`
  @font-face {
    font-family: 'Adobe Garamond Pro';
    src: url(${AGaramondProSemiboldttf}) format('ttf'),
    url(${AGaramondProSemiboldotf}) format('otf'),
    url(${AGaramondProSemiboldwoff}) format('woff');
    font-weight: 600;
    font-style: normal;
  }

  @font-face {
    font-family: 'Adobe Garamond Pro';
    src: url(${AGaramondProRegularttf}) format('ttf'),
    url(${AGaramondProRegularotf}) format('otf'),
    url(${AGaramondProRegularwoff}) format('woff');
    font-weight: normal;
    font-style: normal;
  }

  @font-face {
    font-family: 'Adobe Garamond Pro';
    src: url(${AGaramondProItalicttf}) format('ttf'),
    url(${AGaramondProItalicotf}) format('otf'),
    url(${AGaramondProItalicwoff}) format('woff');
    font-weight: normal;
    font-style: italic;
  }

  @font-face {
    font-family: 'Adobe Garamond Pro';
    src: url(${AGaramondProBoldttf}) format('ttf'),
    url(${AGaramondProBoldotf}) format('otf'),
    url(${AGaramondProBoldwoff}) format('woff');
    font-weight: bold;
    font-style: normal;
  }

  @font-face {
    font-family: 'Couture';
    src: url(${CoutureRegularttf}) format('ttf'),
    url(${CoutureRegularotf}) format('otf'),
    url(${CoutureRegularwoff}) format('woff');
    font-weight: bold;
    font-style: normal;
  }

  html {
    font-family: Adobe Garamond Pro, sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%;
    font-weight: 400;
    color: #1A1818;
  }

  body {
    margin: 0;
    background: #fff;
    overflow-y: ${(props: any) => props.isScroll ? 'auto' : 'hidden'}
  }

  body::-webkit-scrollbar {
    width: 5px;
  }
  *::-webkit-scrollbar-track {
    box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.3);
  }

  *::-webkit-scrollbar-thumb {
    background-color: darkgrey;
    outline: 1px solid slategrey;
  }


  article,
  aside,
  details,
  figcaption,
  figure,
  footer,
  header,
  main,
  menu,
  nav,
  section,
  summary {
    display: block;
  }

  audio,
  canvas,
  progress,
  video {
    display: inline-block;
  }

  audio:not([controls]) {
    display: none;
    height: 0;
  }

  progress {
    vertical-align: baseline;
  }

  [hidden],
  template {
    display: none;
  }

  a {
    text-decoration: none;
    background-color: transparent;
  }

  a:active,
  a:hover {
    outline-width: 0;
  }

  b,
  strong {
    font-weight: inherit;
  }


  img {
    border-style: none;
  }

  button,
  input,
  optgroup,
  select,
  textarea {
    font: inherit;
    margin: 0;
  }

  optgroup {
    font-weight: 700;
  }

  button,
  select {
    text-transform: none;
  }

  [type="reset"],
  [type="submit"],
  button,
  html [type="button"] {
    -webkit-appearance: button;
  }

  [type="button"]::-moz-focus-inner,
  [type="reset"]::-moz-focus-inner,
  [type="submit"]::-moz-focus-inner,
  button::-moz-focus-inner {
    border-style: none;
    padding: 0;
  }

  textarea {
    overflow: auto;
  }

  [type="checkbox"],
  [type="radio"] {
    box-sizing: border-box;
    padding: 0;
  }

  [type="number"]::-webkit-inner-spin-button,
  [type="number"]::-webkit-outer-spin-button {
    height: auto;
  }

  [type="search"]::-webkit-search-cancel-button,
  [type="search"]::-webkit-search-decoration {
    -webkit-appearance: none;
  }

  ::-webkit-input-placeholder {
    color: inherit;
    opacity: 0.54;
  }

  ::-webkit-file-upload-button {
    -webkit-appearance: button;
    font: inherit;
  }

  html {
    box-sizing: border-box;
  }

  * {
    box-sizing: inherit;
  }

  *:before {
    box-sizing: inherit;
  }

  *:after {
    box-sizing: inherit;
  }

  img {
    max-width: 100%;
    padding: 0;
    margin: 0;
  }

  h1 {
    padding: 0;
    margin: 0;
  }

  h2 {
    padding: 0;
    margin: 0;
  }

  h3 {
    padding: 0;
    margin: 0;
  }

  h4 {
    padding: 0;
    margin: 0;
  }

  h5 {
    padding: 0;
    margin: 0;
  }

  h6 {
    padding: 0;
    margin: 0;
  }

  hgroup {
    padding: 0;
    margin: 0;
  }

  ul {
    padding: 0;
    margin: 0;
    list-style-position: outside;
    list-style-image: none;
  }

  ol {
    padding: 0;
    margin: 0;
    list-style-position: outside;
    list-style-image: none;
  }

  dl {
    padding: 0;
    margin: 0;
  }

  dd {
    padding: 0;
    margin: 0;
  }

  p {
    padding: 0;
    margin: 0;
  }

  figure {
    padding: 0;
    margin: 0;
  }

  pre {
    margin: 0;
    font-size: 0.85rem;
    line-height: 1.42;
    background: hsla(0, 0%, 0%, 0.04);
    border-radius: 3px;
    overflow: auto;
    word-wrap: normal;
  }

  fieldset {
    padding: 0;
    margin: 0;
  }

  blockquote {
    padding: 0;
    margin: 0;
  }

  form {
    padding: 0;
    margin: 0;
  }

  noscript {
    padding: 0;
    margin: 0;
  }

  iframe {
    padding: 0;
    margin: 0;
  }

  hr {
    padding: 0;
    margin: 0 0 calc(1.45rem - 1px);
    background: hsla(0, 0%, 0%, 0.2);
    border: none;
    height: 1px;
  }

  b {
    font-weight: bold;
  }

  strong {
    font-weight: bold;
  }

  li {
    margin-bottom: calc(1.45rem / 2);
  }

  ol li {
    padding-left: 0;
  }

  ul li {
    padding-left: 0;
  }
  .main #page-label {
    opacity: 0;
  }
`;
export const LayoutWrapper = styled.div`
  color: #000;
`;

export const PageWrapper = styled.div`
  transition: 0.8s ease-out;

  &.loading {
    opacity: 0;
  }
`;
