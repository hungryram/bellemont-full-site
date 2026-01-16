import React, { FC } from 'react';
import { AvailabilityInProgressWrapper, AvailabilityInProgressTitle } from './index.styled';

const AvailabilityInProgress: FC = () => {
  return (
    <AvailabilityInProgressWrapper>
      <AvailabilityInProgressTitle>
        <span>PLEASE INQUIRE</span>
        <span>FOR AVAILABILITY</span>
      </AvailabilityInProgressTitle>
    </AvailabilityInProgressWrapper>
  );
};

export default AvailabilityInProgress;
