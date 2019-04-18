class CreateJoinTableColorProduct < ActiveRecord::Migration[5.2]
  def change
    create_join_table :colors, :products do |t|
      # t.index [:color_id, :product_id]
      # t.index [:product_id, :color_id]
    end
  end
end
