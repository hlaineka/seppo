class Game < ApplicationRecord
  belongs_to :instructor
  has_many :player
  has_many :task
end
