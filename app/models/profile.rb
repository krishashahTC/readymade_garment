class Profile < ApplicationRecord
  belongs_to :user

  validates :first_name, :last_name, :gender, :address, 
            :city, :state, :phone_number, presence: true
  validates :phone_number, numericality: true, length: { minimum: 2 }
end
