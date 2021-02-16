import React, { useState } from "react";
import { Button, FormLayout, Layout, Link, TextField } from "@shopify/polaris";
import Page from "./Page";
import Card from "../molecules/Card";
import FrameList from "./FrameList";

const Home = () => {
  const [message, setMessage] = useState('')
  return <Page.Simple title='Magus | Home'>
    <Layout>
      <Layout.Section>
        <FrameList />
        <Card.Basic title='New Message'>
          <FormLayout>
            <TextField
              label="What are you up to?"
              value={message}
              onChange={setMessage}
            />
            <Button primary onClick={() => alert('Button clicked!')}>
              Create a New Post
            </Button>
          </FormLayout>
        </Card.Basic>
      </Layout.Section>
      {/* <Layout.Section>
        <Card.Basic title='Frame Management'>
          <Button onClick={() => alert('Button clicked!')}>
            Create a New Frame
          </Button>
        </Card.Basic>
      </Layout.Section> */}
    </Layout>
  </Page.Simple>
}

export default Home
