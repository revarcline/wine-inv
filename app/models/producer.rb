class Producer < ApplicationRecord
  has_many :bottles
  has_many :appellations, through: :bottles
end
