class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.integer :product_id
      t.integer :stockroom_id
      t.integer :quantity

      t.timestamps
    end

    add_index :inventories, [:product_id, :stockroom_id]
  end
end
