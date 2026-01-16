import { HeroPropsInterface } from '../../../interfaces/hero-props.interface';
import buildingImg from '../../../assets/icons/building-icon.svg';

const buildingHeroData: HeroPropsInterface = {
  title: `<h2>
          <span>ROBERT A.M. STERN ARCHITECTS: </span>
          <span>BRINGING A HALF&#8209CENTURY OF </span>
          <span>ARCHITECTURAL DESIGN EXPERIENCE </span>
          <span>TO THE HOME</span>
          </h2>`,
  iconUrl: buildingImg,
  description: `<p>
                <span>America’s most important architect and former Dean of the Yale School </span>
                <span>of Architecture creates a gorgeous addition to his firm’s portfolio of </span>
                <span>remarkable residences.</span>
                </p> `,
  iconAlt: 'Upper East Side Condos'

};

export default buildingHeroData;
