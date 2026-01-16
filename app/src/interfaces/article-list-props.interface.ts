export interface ArticleProps {
  node: {
    Title: string;
    Description: string;
    Date: string;
    ArticleSource: string;
    Logo: {
      localFile: {
        childImageSharp: any;
        publicURL: string;
      }
    }
    Thumb: {
      localFile: {
        childImageSharp: any;
        publicURL: string;
      }
    }

    category: {
      id: number;
    }
  };
}


export interface ArticleListPropsInterface {
  list: ArticleProps[];
  id: number;
}
