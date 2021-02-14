import React from 'react';
import ReactDOM from "react-dom"
import Home from './pages/Home'

export default {
  render: () => {
    console.log('render here')
    ReactDOM.render(
      // <div>hi</div>,
      <Home />,
      document.getElementById('app-root')
      // document.body.appendChild(document.createElement('div')),
    )
  }
}
