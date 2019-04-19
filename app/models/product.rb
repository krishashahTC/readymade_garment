class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category
  belongs_to :sub_category
  has_and_belongs_to_many :colors
  has_and_belongs_to_many :sizes
  has_many :carts, dependent: :destroy
  has_many_attached :images, dependent: :destroy

  validates :name, :price, :quantity, :images, :sizes, :colors, presence: true
end
