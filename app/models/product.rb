class Product < ApplicationRecord
  belongs_to :sub_category
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :sizes
  has_many_attached :images, dependent: :destroy
end
