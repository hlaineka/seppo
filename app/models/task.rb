class Task < ApplicationRecord
  enum type: {
    text: 0,
    multiple: 1
  }

  belongs_to :instructor
  has_many :player
  has_many :multiple_choice
end
