module Types
  class PersonType < Types::BaseObject
    field :id, ID, null: false
    field :about, String, null: true
    field :name, String, null: false
    field :image_url, String, null: false
  end
end
