import React from 'react'
import Home from './pages/Home'
import { useQuery } from 'react-apollo'
import { gql } from 'apollo-boost'

const GET_FRAMES = gql`{
  frames {
    about
  }
}`

export const App = () => {
  const { loading, error, data } = useQuery(GET_FRAMES)
  if (loading) return <>'Loading...'</>
  if (error) return <>`Error :  ${error.message}`</>

  return <Home frames={data} />
}
