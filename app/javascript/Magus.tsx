import React from 'react';
import ReactDOM from "react-dom"
import { ApolloProvider } from 'react-apollo'
import { App } from './components/App';
import { client } from './support/Apollo';

const rootElementId = 'app-root'

const render = () => ReactDOM.render(
  <ApolloProvider client={client}>
    <App />
  </ApolloProvider>,
  document.getElementById(rootElementId)
)

const inject = () => document.addEventListener(
  'DOMContentLoaded',
  render
)

const Magus = { start: inject }

export default Magus
