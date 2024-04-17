class Player < ApplicationRecord
  has_many :game
  belongs_to :user
end
