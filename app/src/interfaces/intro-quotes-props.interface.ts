export interface IQuote {
  text: string;
  author: string;
}

export interface IntroQuotesPropsInterface {
  quotes: IQuote[];
  textButton?: string;
}