class User < ApplicationRecord
  belongs_to :instructor
  belongs_to :player
  has_many :game
end
