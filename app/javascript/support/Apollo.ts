import { HttpLink, ApolloClient, InMemoryCache } from "apollo-boost"

const railsCsrfToken = document
  .querySelector("meta[name=csrf-token]")
  ?.getAttribute("content")

const link = new HttpLink({
  uri: "/graphql",
  headers: {
    "X-CSRF-Token": railsCsrfToken,
  },
})

const client = new ApolloClient({
  cache: new InMemoryCache(),
  link
})

export { client }
