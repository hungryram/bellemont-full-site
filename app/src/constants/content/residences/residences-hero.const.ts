import { HeroPropsInterface } from '../../../interfaces/hero-props.interface';
import residencesImg from '../../../assets/icons/residences-icon.svg';

const residencesHeroData: HeroPropsInterface = {
  title: `<h2>
            <span>"WE WANTED TO BE UNDERSTATED, </span>
            <span>CHIC AND TIMELESS. WE AIMED TO </span>
            <span>DELIVER THE FEELING OF A CLASSIC </span>
            <span>TURN-OF-THE-CENTURY PARISIAN </span>
            <span>APARTMENT, THE SCALE AND </span>
            <span>OPENNESS TO LIGHT IS IDEAL."</span>
          </h2>`,
  iconUrl: residencesImg,
  author: `— Achille Salvagni, Interior Designer`,
  description: `<p>
                  <span>The Rome-based designer contrasts texture, tone and scale to craft a dialogue on </span>
                  <span>beauty. His luxury interiors, yachts, furniture, and lighting are coveted around </span>
                  <span>the world for this balance.</span>
                </p>`,
  iconAlt: 'UES Luxury Condos',
};

export default residencesHeroData;
