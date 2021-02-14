import React from "react";
import useFetch from "../../services/useFetch";
import { Page } from "./Page";

const Home = () => {
  const url = '/users'
  const { data } = useFetch(url)
  return <Page>
    <div>hello world (components/pages/home.tsx)</div>
    <div>{JSON.stringify(data)}</div>
  </Page>
}

export default Home
