module Types
  class StreamType < Types::BaseObject
    field :id, ID, null: false
    field :user, Types::PersonType, null: false
    field :name, String, null: true
    field :about, String, null: true
    # field :user_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :frame_id, Integer, null: false

    field :messages,
          [Types::MessageType],
          null: false
    def messages
      self.object.messages
    end
  end
end
