class Cart < ApplicationRecord
  belongs_to :user
  belongs_to :product

  before_save :count_total_price, on: :create

  def count_total_price
    self.price = quantity * product.price
  end

  validates :quantity, presence: true
end
