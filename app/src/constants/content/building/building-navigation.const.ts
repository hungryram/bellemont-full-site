import { PageNavigationPropsInterface } from '../../../interfaces/page-navigation-props.interface';
import recidencesImg from '../../../assets/icons/nav/menu-residences.svg';

const buildingPageNavigationData: PageNavigationPropsInterface = {
  next: {
    name: 'Residences',
    link: '/residences',
    icon: recidencesImg,
    iconAlt: 'Upper East Side Condos',
  },
};

export default buildingPageNavigationData;
