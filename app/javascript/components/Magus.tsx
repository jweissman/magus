import React from 'react';
import ReactDOM from "react-dom"
import { ApolloProvider } from 'react-apollo'
import { ApolloClient } from 'apollo-client'
import { createHttpLink } from 'apollo-link-http'
import { InMemoryCache } from 'apollo-cache-inmemory'
import { App } from './App';
import { HttpLink } from 'apollo-boost';

const link = createHttpLink({ uri: 'http://localhost:3000/graphql' })
// const client = new ApolloClient({ link: link, cache: new InMemoryCache() })

const railsCsrfToken = document
  .querySelector("meta[name=csrf-token]")
  ?.getAttribute("content")

const client = new ApolloClient({
  cache: new InMemoryCache(),
  link: new HttpLink({
    uri: "http://localhost:3000/graphql",
    headers: {
      "X-CSRF-Token": railsCsrfToken,
    },
  }),
})

export default {
  render: () => {
    console.log('render here')
    ReactDOM.render(
      <ApolloProvider client={client}>
        <App />
      </ApolloProvider>,
      document.getElementById('app-root')
    )
  }
}
