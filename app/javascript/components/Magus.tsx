import React from 'react';
import ReactDOM from "react-dom"
import Home from './pages/home'

export default {
  render: () => {
    console.log('render here')
    ReactDOM.render(
      <Home />,
      document.body.appendChild(document.createElement('div')),
    )
  }
}
