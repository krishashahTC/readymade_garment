class Category < ApplicationRecord
  has_many :sub_categories, dependent: :destroy
  # validates :name, :description, presence: true, uniqueness: true
end
