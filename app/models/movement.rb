class Movement < ApplicationRecord
  has_many :exercises, dependent: :restrict_with_error
  has_many :performances, through: :exercises

  validates :name, presence: true, uniqueness: true
  validates :abbreviation, uniqueness: { allow_blank: true }
end
