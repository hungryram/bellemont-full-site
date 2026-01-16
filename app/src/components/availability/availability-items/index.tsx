import React, { useRef } from 'react';
import { graphql, useStaticQuery } from 'gatsby';
import { AvailabilityItemsWrapper, Card } from './index.styled';

const AvailabilityItems = () => {

  const cardRef = useRef<HTMLDivElement>(null);

  const data = useTheAvailabilityQuery();
  const { AvailabilityItem: items } = data.strapiTheAvailabilityPage;

  function numberWithCommas(x: any) {
    return x.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
  }

  return (
    <AvailabilityItemsWrapper>
      <Card className={'headings'} ref={cardRef}>
        <p>Unit</p>
        <p className={'wide'}>
          Beds / Baths
        </p>
        <p className={'wide intExt'}>Int. SF / Ext. SF</p>
        <p className={'wide'}>
          Price
        </p>
        <p>CC</p>
        <p>Ret</p>
        <p className={'wide'}>Floor Plan</p>
      </Card>
      {items.map((el: any) => (
        <Card key={el.id} className={'card'}>
          <p className={'unit'}>{el.Unit}</p>
          <p className={'wide'}>
            {el.Beds} / {el.Baths}{' '}
          </p>
          <p className={'wide intExt'}>
            {el.Int} / {el.Ext}{' '}
          </p>
          <p className={'wide'}> ${numberWithCommas(el.Price)}</p>
          <p className={'wide'}>
            ${numberWithCommas(el.CC)}
          </p>
          <p className={'wide'}>
            ${numberWithCommas(el.Ret)}
          </p>
          <p className={'wide bold btn'}>
            <a href={el.FloorPlanFile.url} download={true}>{el.FloorPlan}</a>
          </p>
        </Card>
      ))}
    </AvailabilityItemsWrapper>
  );
};

export default AvailabilityItems;

const useTheAvailabilityQuery = () => {
  const data = useStaticQuery(
    graphql`
      query TheAvailabilityQuery {
        strapiTheAvailabilityPage {
          AvailabilityItem {
            Beds
            Baths
            CC
            FloorPlan
            Int
            Ext
            Unit
            id
            Price
            Ret
          }
        }
      }

    `
  );
  return data;
};
