class Varietal < ApplicationRecord
  has_many :bottle_varietals
  has_many :bottles, through: :varietals
end
