import { PageNavigationPropsInterface } from '../../../interfaces/page-navigation-props.interface';
import residencesImg from '../../../assets/icons/nav/menu-residences.svg';
import neighborhoodImg from '../../../assets/icons/nav/menu-neighborhood.svg';

const amenitiesPageNavigationData: PageNavigationPropsInterface = {
  prev: {
    name: 'Residences',
    link: '/residences',
    icon: residencesImg,
    iconAlt: 'Upper East Side Condos',
  },
  next: {
    name: 'Neighborhood',
    link: '/neighborhood',
    icon: neighborhoodImg,
    iconAlt: '',
  },
};

export default amenitiesPageNavigationData;
