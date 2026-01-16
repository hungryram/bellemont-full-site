import { HeroPropsInterface } from '../../../interfaces/hero-props.interface';
import amenitiesImg from '../../../assets/icons/amenities-icon.svg';

const amenitiesHeroData: HeroPropsInterface = {
  title: `<h2>
            <span>A COLLECTION OF SPECIAL SPACES </span>
            <span>FOR GAMES AND GATHERINGS</span>
          </h2>`,
  iconUrl: amenitiesImg,
  description: `<p>
                  <span>The common areas of The Bellemont reflect a careful curation of places residents </span>
                  <span>will want to visit daily: an enchanting rooftop terrace with spectacular views of </span>
                  <span>Central Park, a state-of-the-art screening room, a regulation squash court, </span>
                  <span>inspired children’s play room, and a holistic fitness space with every asset needed </span>
                  <span>for optimal performance.</span>
                </p>`,
  iconAlt: 'Amenities',
};

export default amenitiesHeroData;
