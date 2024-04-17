class User < ApplicationRecord
  has_one :instructor, required: false
  has_one :player, required: false
  has_many :game
end
