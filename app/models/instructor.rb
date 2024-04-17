class Instructor < ApplicationRecord
  belongs_to: user_id
  has_many :game_id
  has_many :task_id
end
