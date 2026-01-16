import React, { FC } from 'react';
import PageLabel from '../components/page-label';
import teamData from '../constants/content/team/team.const';
import { PersonItem, PersonMainInfo, PersonName, PersonPosition, Team, } from '../components/team/index.styled';
import { TypeVariant } from '../interfaces/page-label-props.interface';
import { HeaderBackground } from '../styles/default-page.styled';

const TeamPage: FC = () => {

  return (
    <Team>
      <HeaderBackground />
      <PageLabel name={'Team'} type={TypeVariant.small} fixed={true}/>
      {teamData.length > 0 &&
      teamData.map((teamItem, i) => (
        <PersonItem key={i}>
          <PersonMainInfo>
            <PersonPosition>
              {teamItem.position}
            </PersonPosition>
            <PersonName href={teamItem.link} target={'_blank'}>
              {teamItem.name}
            </PersonName>
          </PersonMainInfo>
        </PersonItem>
      ))
      }
    </Team>
  );
};

export default TeamPage;
