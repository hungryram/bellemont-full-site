import React from 'react';
import { ArticleListPropsInterface } from '../../../interfaces/article-list-props.interface';
import ArticleItem from '../Item/index';
import { List } from './index.styled';

const ArticleList = ({ list, id }: ArticleListPropsInterface) => {
  return (
    <List>
      {list.length > 0 && list.map((item, i) => {
        if (item.node.category.id === id) {
          return (
            <ArticleItem {...item} key={i}/>
          )
        }
      })}
    </List>
  );
};

export default ArticleList;
