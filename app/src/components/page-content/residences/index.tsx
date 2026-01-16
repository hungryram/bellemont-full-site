import React, { FC } from 'react';
import {
  ResidencesContentSection,
  ResidencesContentH4,
  ResidencesContentP,
  ContentImages,
} from './index.styled';
import { PageContentProps } from '../../../interfaces/page-content-props.interface';
import FullscreenImage from '../../fullscreen-image';

const ResidencesContent: FC<PageContentProps> = ({ title, description }) => {
  return (
    <ResidencesContentSection>
      <FullscreenImage imageSrc={'residences-2.jpg'} increase={true} alt={'Upper East Side Condos'}/>
      <ResidencesContentP>
          <span>Naftali Group brings together the talents of Robert A.M. Stern Architects and </span>
          <span>designer Achille Salvagni to create a new architectural legacy — a limestone and </span>
          <span>iron-work masterpiece of twelve unique homes at the corner of Madison Avenue and </span>
          <span>86th Street in the most southern part of Carnegie Hill.</span>
      </ResidencesContentP>
      <FullscreenImage imageSrc={'residences-3.jpg'} withPadding={'79.4%'} increase={true} alt={'Madison Ave New Condos'}/>
      <FullscreenImage imageSrc={'residences-4.jpg'} withPadding={'79.4%'} increase={true} alt={'Upper East Side Penthouse'}/>
      <ResidencesContentH4>
        <span>THE BELLEMONT INTERIORS CONVEY A SENSE OF </span>
        <span>SCALE AND GRANDEUR</span>
      </ResidencesContentH4>
      <ResidencesContentP>
        <span>Robert A.M. Stern Architects crafted the plans and proportions for The Bellemont’s </span>
        <span>full-floor and duplex homes at a scale rarely seen on the Upper East Side—loft-like </span>
        <span>ceilings, expansive enfilades, and dramatically tall windows that inspire awe. </span>
      </ResidencesContentP>
      <FullscreenImage imageSrc={'residences-5.jpg'} increase={true} alt={'Upper East Side Townhouse'}/>
      <FullscreenImage imageSrc={'residences-6.jpg'} withPadding={'79.4%'} increase={true} alt={'Condos Near Central Park'}/>
      <ResidencesContentP>
        <span>The apartments’ grand and graceful proportions, soaring ceilings, and views of </span>
        <span>Central Park through monumental windows make these vast residences a notable </span>
        <span>addition to the city’s architectural history and a rare opportunity to enjoy classic </span>
        <span>floor plans and details with the amenities of a modern building.</span>
      </ResidencesContentP>
      <FullscreenImage imageSrc={'residences-7.jpg'} withPadding={'79.4%'} increase={true} alt={'Luxury Designed Interior'}/>
      <ResidencesContentP>
        <span>Achille Salvagni ensured the interiors of the boutique building are graced with </span>
        <span>exquisite romantic details, contemporary conveniences, and moments of magic. The </span>
        <span>large-scale polished doors and high moldings bring balance and fine craftsmanship.</span>
      </ResidencesContentP>
      <ContentImages>
        <div className="leftCol">
          <FullscreenImage imageSrc={'residences-8.jpg'} margin={'0'} increase={true} alt={'Luxury'}/>
        </div>
        <div className="rightCol">
          <FullscreenImage imageSrc={'residences-9.jpg'} margin={'0'} increase={true}/>
        </div>
      </ContentImages>
    </ResidencesContentSection>
  );
};

export default ResidencesContent;
