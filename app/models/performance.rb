class Performance < ApplicationRecord
  belongs_to :exercise

  has_one :movement, through: :exercise

  validates :date, presence: true
end
