class Size < ApplicationRecord
  has_and_belongs_to_many :products

  validates :measurements, presence: true, uniqueness: true
end
