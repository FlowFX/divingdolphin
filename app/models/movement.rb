class Movement < ApplicationRecord
  has_many :exercises
  has_many :performances, through: :exercises

  validates :name, presence: true
end
