import React from "react";
import { Badge, Layout, Stack, TextContainer, TextStyle } from "@shopify/polaris";
import { MuFrame } from '../../types';
import Card from "../molecules/Card";
import { gql } from "apollo-boost";
import { useQuery } from "react-apollo";
import { CardList } from "./CardList";

const GET_SPACES = gql`{
  spaces {
    id
    name
    frames {
      id
      name
      about
      streams {
        id
        name
        messages {
          id
        }
      }
    }
  }
}`

function FrameList({ frames }: { frames: MuFrame[]; }) {
  return <>
    <CardList
      items={frames}
      title={frame => frame.name}
      render={frame => <Layout>
        <Layout.Section>
          <Stack>
            <Badge>Personal Frame</Badge>
            <Badge>{frame.about}</Badge>
          </Stack>
        </Layout.Section>
        {frame.streams && <>
          {frame.streams.map(stream => <Layout.Section>
            <h3>
              <TextStyle variation="strong">{stream.name}</TextStyle>
            </h3>
            <TextContainer>{stream.messages.length} post(s)</TextContainer>
          </Layout.Section>)}
        </>}
      </Layout>}
    />
  </>;
}

const FrameListPresenter = () => {
  const { loading, error, data } = useQuery(GET_SPACES)
  if (loading) return <>'Loading...'</>
  if (error) return <>`Error :  ${error.message}`</>
  const { spaces } = data
  const frames = spaces.flatMap(space => space.frames)
  return <FrameList frames={frames} />
}

export default FrameListPresenter
