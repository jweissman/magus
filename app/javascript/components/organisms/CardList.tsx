import React from 'react';
import Card from "../molecules/Card";

// type CardRepresentation = {
//   title: string
//   render: React.ReactNode
// }

function CardList<T>({ items, title, render }: {
  items: T[],
  title: (it: T) => string,
  render: (it: T) => React.ReactNode
}) {
  return <>{items.map(it =>
    <Card.Basic title={title(it)}>
      {render(it)}
    </Card.Basic>
  )}</>
}

export { CardList }
