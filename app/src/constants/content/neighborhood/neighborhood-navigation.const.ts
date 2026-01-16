import { PageNavigationPropsInterface } from '../../../interfaces/page-navigation-props.interface';
import amenitiesImg from '../../../assets/icons/nav/menu-amenities.svg';

const neighborhoodPageNavigationData: PageNavigationPropsInterface = {
  prev: {
    name: 'Amenities',
    link: '/amenities',
    icon: amenitiesImg,
    iconAlt: '',
  },
};

export default neighborhoodPageNavigationData;
