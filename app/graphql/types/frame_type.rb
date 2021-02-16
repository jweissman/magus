module Types
  class FrameType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :about, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::PersonType, null: false

    field :streams,
          [Types::StreamType],
          null: false
    def streams
      self.object.streams
    end
  end
end
