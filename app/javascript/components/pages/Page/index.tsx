import React from 'react'
import { FooterHelp, Layout, Link, Page } from '@shopify/polaris'

const SimplePage = ({ title, children }) => 
  <Page title={title}>
    {children}
    <Layout.Section>
      <FooterHelp>
        For more details on Magus, visit our{' '}
        <Link url="https://github.com/jweissman/magus">github repo</Link>.
     </FooterHelp>
    </Layout.Section>
  </Page>

export default {
  Simple: SimplePage
}
