import React from 'react'
import Home from './pages/HomePage'
import '@shopify/polaris/dist/styles.css';
import enTranslations from '@shopify/polaris/locales/en.json'
import {AppProvider, Frame} from '@shopify/polaris'

export const App = () => {
  return <AppProvider i18n={enTranslations}>
    <Frame>
      <Home />
    </Frame>
  </AppProvider>
}
