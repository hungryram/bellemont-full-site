export interface GalleryPropsInterface {
  handleGalleryClose: () => void;
}

export interface GalleryItemProps {
  img: string;
  imgLabel?: string;
}

export interface GalleryItemsProps {
  list: GalleryItemProps[];
}
