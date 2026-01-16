import { PageNavigationPropsInterface } from '../../../interfaces/page-navigation-props.interface';
import architectureImg from '../../../assets/icons/nav/menu-building.svg';
import amenitiesImg from '../../../assets/icons/nav/menu-amenities.svg';

const residencesPageNavigationData: PageNavigationPropsInterface = {
  prev: {
    name: 'Architecture',
    link: '/architecture',
    icon: architectureImg,
    iconAlt: '',
  },
  next: {
    name: 'Amenities',
    link: '/amenities',
    icon: amenitiesImg,
    iconAlt: '',
  },
};

export default residencesPageNavigationData;
