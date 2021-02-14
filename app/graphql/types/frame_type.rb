module Types
  class FrameType < Types::BaseObject
    field :id, ID, null: false
    # field :user_id, Integer, null: false
    field :name, String, null: false
    field :about, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::PersonType, null: false
  end
end
