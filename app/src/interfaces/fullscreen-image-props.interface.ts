export enum PositionVariant {
  right = 'right',
  left = 'left',
  bottom = 'bottom',
  top = 'top',
}

export interface IFullscreenImageProps {
  imageSrc: string;
  withPadding?: string;
  margin?: string;
  position?: PositionVariant | string;
  increase?: boolean;
  increaseOrig?: string;
  showAnimation?: boolean;
  alt?: string;
}
