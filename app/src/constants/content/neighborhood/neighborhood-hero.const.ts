import { HeroPropsInterface } from '../../../interfaces/hero-props.interface';
import neighborhoodImg from '../../../assets/icons/neighborhood-icon.svg';

const neighborhoodHeroData: HeroPropsInterface = {
  title: `<h2>
            <span>THE BELLEMONT STANDS AT THE CENTER OF NEW </span>
            <span>YORK CITY’S MOST LOVED DESTINATIONS: CENTRAL </span>
            <span>PARK, MUSEUM MILE, AND THE WORLD’S MOST </span>
            <span>FAMOUS FASHION AND SHOPPING PROMENADE – </span>
            <span>MADISON AVENUE</span>
          </h2>`,
  iconUrl: neighborhoodImg,
  description: `<p>
                  <span>The Bellemont is located on Madison Avenue, the most famous shopping and dining street in the world. It is also </span>
                  <span>nestled in the heart of the Upper East Side, Manhattan’s most established residential neighborhood, adjacent to </span>
                  <span>Museum Mile and at the center of the city’s finest education and cultural offerings.</span>
                </p>`,
  location: 'neighborhood',
  iconAlt: 'Neighborhood',
};

export default neighborhoodHeroData;
