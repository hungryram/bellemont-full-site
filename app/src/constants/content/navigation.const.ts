import { NavigationPropsInterface } from '../../interfaces/navigation-props.interface';
import architectureImg from '../../assets/icons/nav/menu-building.svg';
import residencesImg from '../../assets/icons/nav/menu-residences.svg';
import amenitiesImg from '../../assets/icons/nav/menu-amenities.svg';
import neighborhoodImg from '../../assets/icons/nav/menu-neighborhood.svg';

export const NavigationMainMenu: NavigationPropsInterface[] = [
  {
    name: 'ARCHITECTURE',
    icon: architectureImg,
    link: '/architecture',
  },
  {
    name: 'Residences',
    icon: residencesImg,
    link: '/residences',
  },
  {
    name: 'Amenities',
    icon: amenitiesImg,
    link: '/amenities',
  },
  {
    name: 'Neighborhood',
    icon: neighborhoodImg,
    link: '/neighborhood',
  },
];

export const NavigationSecondaryMenu: NavigationPropsInterface[] = [
  {
    name: 'Team',
    link: '/team',
  },
  {
    name: 'Availability',
    link: '/availability',
  },
  {
    name: 'Press',
    link: '/press',
  },
  {
    name: 'Contact',
    link: '/contact',
  },
];

export const NavigationFooterMenu: NavigationPropsInterface[] = [
  {
    name: 'Availability',
    link: '/availability',
  },
  {
    name: 'Press',
    link: '/press',
  },
  {
    name: 'Contact',
    link: '/contact',
  },
  {
    name: 'Legal',
    link: '/legal',
  },
];
