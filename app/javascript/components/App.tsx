import React from 'react'
import Home from './pages/Home'
import { useQuery } from 'react-apollo'
import { gql } from 'apollo-boost'
import '@shopify/polaris/dist/styles.css';
import enTranslations from '@shopify/polaris/locales/en.json'
import {AppProvider} from '@shopify/polaris'


const GET_FRAMES = gql`{
  frames {
    about
  }
}`

export const App = () => {
  const { loading, error, data } = useQuery(GET_FRAMES)
  if (loading) return <>'Loading...'</>
  if (error) return <>`Error :  ${error.message}`</>

  return <AppProvider i18n={enTranslations}>
    <Home frames={data.frames} />
  </AppProvider>
}
