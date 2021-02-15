import React from "react";
import { Button, Card, FooterHelp, Layout, Link } from "@shopify/polaris";
import { Page } from "./Page";

const Home = ({ frames }) => {
  return <Page title='Magus | Home'>
    <Layout>
      <Layout.Section>
        {frames.map(frame => <Card title={frame.about} sectioned>
          {frame.about}
        </Card>)}
        <Card sectioned>
          <Button primary onClick={() => alert('Button clicked!')}>
            Create a New Frame
          </Button>
        </Card>
      </Layout.Section>
      <Layout.Section>
        <FooterHelp>
          For more details on Magus, visit our{' '}
          <Link url="https://github.com/jweissman/magus">github repo</Link>.
        </FooterHelp>
      </Layout.Section>
    </Layout>
  </Page>
}

export default Home
