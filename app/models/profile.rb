class Profile < ApplicationRecord
  belongs_to :user

  validates :phone_number, numericality: true, length: { minimum: 2 }, on: :edit
end
