import React from 'react';
import Card from "../molecules/Card";

type CardRepresentation = {
  title: string
  body: React.ReactNode
}

function CardList<T extends CardRepresentation>({ items }: {items: T[] }) {
  return items.map(it =>
    <Card.Basic title={it.title}>
      {it.body}
    </Card.Basic>
  )
}

export { CardList }
