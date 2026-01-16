export enum LabelVariant {
  white = 'white',
  dark = 'dark'
}

export enum TypeVariant {
  small = 'small',
  large = 'large'
}

export interface IPageLabelProps {
  name: string;
  variant?: LabelVariant;
  color?: string;
  type?: TypeVariant;
  fixed?: boolean;
}

export interface IPageLabelType {
  type?: TypeVariant
}
