import React, { FC } from 'react';
import { IPageLabelProps } from '../../interfaces/page-label-props.interface';
import { PageLabelStyled, PageLabelTitle } from './index.styled';

const PageLabel: FC<IPageLabelProps> = ({ name, variant, color, type, fixed }) => {
  return (
    <PageLabelStyled color={color} id={'page-label'} fixed={fixed}>
      <PageLabelTitle type={type}>
        {type === 'small' && <h1>{name}</h1>}
        {type === 'large' && <h1>{name}</h1>}
      </PageLabelTitle>
    </PageLabelStyled>
  );
};

export default PageLabel;
