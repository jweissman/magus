module Types
  class SpaceType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :user, Types::PersonType, null: false
    field :frames,
          [Types::FrameType],
          null: false,
          description: "All the awesome frames"
    def frames
      self.object.frames
    end
  end
end
