class Game < ApplicationRecord
  belongs_to :instructor_id
  has_many :player_id
  has_many :task_id
end
