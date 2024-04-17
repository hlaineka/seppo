class Player < ApplicationRecord
  has_many :game_id
  belongs_to :user_id
end
