class Bottle < ApplicationRecord
  belongs_to :producer
  belongs_to :appellation
  has_many :bottle_varietals
  has_many :varietals, through: :bottle_varietals
end
