class Task < ApplicationRecord
  enum type: {
    text: 0,
    multiple: 1
  }

  belongs_to :instructor_id
  has_many :player_id
  has_many :multiple_choice_id
end
