class Stream < ApplicationRecord
  belongs_to :user
  has_many :messages
  belongs_to :frame
end
