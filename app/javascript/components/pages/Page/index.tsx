import React from 'react'
import './Page.scss'
const Page = ({ children }) => <div className='Page'>
  <div className='Container'>
    {children}
  </div>
</div>
export { Page }
