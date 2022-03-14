class Exercise < ApplicationRecord
  belongs_to :movement

  has_many :performances, dependent: :restrict_with_error

  validates :sets, numericality: { greater_than: 0, allow_blank: true }
  validates :repetitions, numericality: { greater_than: 0, allow_blank: true }

  validates :movement, uniqueness: { scope: %i[sets repetitions] }
end
