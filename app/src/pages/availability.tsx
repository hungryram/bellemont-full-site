import React, { FC, useState } from 'react';
import AvailabilityItems from '../components/availability/availability-items';
import PageLabel from '../components/page-label';
import { Availability } from '../components/availability/index.styled';
import AvailabilityInProgress from '../components/availability/availability-in-progress';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import { HeaderBackground } from '../styles/default-page.styled';

const AvailabilityPage: FC = () => {

  const [isReady, setIsReady] = useState<boolean>(false);

  return (
    <Availability>
      <HeaderBackground />
      <PageLabel name={'Availability'} type={TypeVariant.small} fixed={true}/>
      {isReady
        ? <AvailabilityItems/>
        : <AvailabilityInProgress/>
      }
    </Availability>
  );
};

export default AvailabilityPage;
