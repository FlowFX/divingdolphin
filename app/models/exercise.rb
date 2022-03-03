class Exercise < ApplicationRecord
  belongs_to :movement

  has_many :performances

  validates :sets, numericality: { greater_than: 0, allow_blank: true }
  validates :repetitions, numericality: { greater_than: 0, allow_blank: true }
end
