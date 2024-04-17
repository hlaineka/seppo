class Instructor < ApplicationRecord
  belongs_to :user
  has_many :game
  has_many :task
end
