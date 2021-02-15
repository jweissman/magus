import React from 'react'
import { Page } from '@shopify/polaris'

const SimplePage = ({ title, children }) => <Page title={title}>
  {children}
</Page>

export { SimplePage as Page }
