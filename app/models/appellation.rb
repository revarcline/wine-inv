class Appellation < ApplicationRecord
  has_many :bottles
  has_many :producers, through: :bottles
end
