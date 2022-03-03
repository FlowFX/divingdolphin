class Exercise < ApplicationRecord
  belongs_to :movement

  validates :sets, numericality: { greater_than: 0 }
  validates :repetitions, numericality: { greater_than: 0, allow_blank: true }
end
