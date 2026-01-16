import React, { useEffect, useState } from 'react';
import { PageNavigationPropsInterface } from '../../interfaces/page-navigation-props.interface';
import {
  PageNavigationSection,
  PageNavigationLinkWrapperPrev,
  PageNavigationLinkWrapperNext,
  PageNavigationLink,
  PageNavigationLinkIcon,
  PageNavigationLinkName,
  EmptyBlock,
} from './index.styled';
import useWindowSize from '../../helpers/UseWindowSize';

const PageNavigation = ({ prev, next }: PageNavigationPropsInterface) => {

  const size = useWindowSize();
  const [links, setLinks] = useState<number>(0)

  useEffect(() => {
    setLinks(() => !prev || !next ? 1 : 0)
  }, [])

  return (
    <PageNavigationSection links={links}>
      {prev
        ? <PageNavigationLinkWrapperPrev>
        <PageNavigationLink to={prev.link}>
          {prev.icon && <PageNavigationLinkIcon src={prev.icon} alt={prev.iconAlt}/>}
          <PageNavigationLinkName>
            {prev.name}
          </PageNavigationLinkName>
        </PageNavigationLink>
      </PageNavigationLinkWrapperPrev>
        : size.width > 1024 && <EmptyBlock/>
      }
      {next
        ? <PageNavigationLinkWrapperNext>
        <PageNavigationLink to={next.link}>
          {next.icon && <PageNavigationLinkIcon src={next.icon} alt={next.iconAlt}/>}
          <PageNavigationLinkName>
            {next.name}
          </PageNavigationLinkName>
        </PageNavigationLink>
      </PageNavigationLinkWrapperNext>
        : size.width > 1024 && <EmptyBlock/>
      }
    </PageNavigationSection>
  );
};

export default PageNavigation;
