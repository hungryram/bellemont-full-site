import React, { FC }  from 'react';
import {
  About,
  BuildingContentH4,
  BuildingContentWrapper,
} from './index.styled';
import FullscreenImage from '../../fullscreen-image';

const BuildingContent: FC = () => {
  return (
    <About>
      <BuildingContentH4>
        <span>“WELCOME TO THE BELLEMONT. </span>
        <span>WITH A BREATHTAKING HANDLAID LIMESTONE FAÇADE, </span>
        <span>THE BELLEMONT IS A TRUE ONCE-IN-A-LIFETIME MASTERPIECE.</span>
        <span>THE SCALE, THE BUILDING, THE LOCATION - THERE IS NOTHING </span>
        <span>QUITE LIKE IT. OUR VISION WAS TO COMBINE THE TALENTS OF </span>
        <span>ROBERT A.M. STERN ARCHITECTS AND ACHILLE SALVAGNI </span>
        <span>TO CREATE A LIMITED COLLECTION OF HOMES.” </span>
        <p>— Miki Naftali, Naftali Group</p>
      </BuildingContentH4>
      <FullscreenImage imageSrc={'building-2.jpg'} withPadding={'42%'} increase={true} alt={'Upper East Side Townhouse'}/>
      <BuildingContentWrapper>
        <BuildingContentH4 className={'bulding-second-title'}>
          <span>THE BELLEMONT IS A RESIDENTIAL MASTERPIECE LOCATED  </span>
          <span>IN THE MOST DESIRABLE PART OF THE UPPER EAST SIDE.  </span>
          <span>COMPRISED OF A LIMITED COLLECTION OF TWELVE ELEGANT  </span>
          <span>RESIDENCES, THIS REMARKABLE LIMESTONE BUILDING IS JUST  </span>
          <span>ONE BLOCK FROM CENTRAL PARK. </span>
        </BuildingContentH4>
      </BuildingContentWrapper>

      <FullscreenImage imageSrc={'building-3.jpg'} increase={true} alt={'New Luxury Condos'}/>
      <BuildingContentWrapper>
        <BuildingContentH4 className={'bulding-second-title'}>
          <span>A BUILDING THAT HONORS THE UPPER EAST SIDE’S DISTINCT  </span>
          <span>ELEGANCE WHILE ADDING ITS OWN CONTEMPORARY STYLE </span>
        </BuildingContentH4>
          <p>
            <span>The Bellemont welcomes residents through intricate metalwork doors on famed </span>
            <span>Madison Avenue. With a façade of sculpted hand-laid Indiana limestone graced with </span>
            <span>dramatically scaled windows, the building rises up from the street corner as if it had </span>
            <span>always been there. </span>
            <br/>
            <span>The entrance details hint at the beauty within, including a sophisticated lobby </span>
            <span>graced with marble leaf inlays — a reminder that this charming building basks in the </span>
            <span>beauty of Central Park. </span>
            <br/>
            <span>“Collectively with Naftali, we thought about how the entire building flowed </span>
            <span>together, so it seems very logical” says Michael Jones, a partner at RAMSA. </span>
            <span>“When you walk through the doors from the exterior into the lobby, there’s a </span>
            <span>certain coherence in the restraint and classicism, and the abstraction, and </span>
            <span>how it all pulls together.” </span>
        </p>
      </BuildingContentWrapper>
    </About>
  );
};

export default BuildingContent;
