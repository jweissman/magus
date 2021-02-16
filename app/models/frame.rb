class Frame < ApplicationRecord
  belongs_to :user
  belongs_to :space
  has_many :streams
end
