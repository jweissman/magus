import React from "react";
import useFetch from "../../services/useFetch";
import { Page } from "./Page";

const Home = ({ frames }) => {
  // const url = '/users'
  // const { data } = useFetch(url)
  return <Page>
    <div>hello world (components/pages/home.tsx)</div>
    <div>{JSON.stringify(frames)}</div>
  </Page>
}

export default Home
