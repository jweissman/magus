class Space < ApplicationRecord
  belongs_to :user
  has_many :frames
end
