class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.string :role
      t.string :gender
      t.string :address
      t.string :city
      t.string :state
      t.string :phone_number
      t.string :email
      t.string :seller_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
