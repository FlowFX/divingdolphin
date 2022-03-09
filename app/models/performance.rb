class Performance < ApplicationRecord
  belongs_to :exercise
  belongs_to :user

  has_one :movement, through: :exercise

  validates :date, presence: true
end
