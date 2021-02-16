module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :spaces, [Types::SpaceType], null: false 
    def spaces
      Space.all
    end

    # field :people, Person, description: "Cool"
    # def people
    #   User.all
    # end
  end
end
