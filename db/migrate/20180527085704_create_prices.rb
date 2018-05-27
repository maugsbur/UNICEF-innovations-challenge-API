class CreatePrices < ActiveRecord::Migration[5.2]
  def change
    create_table :prices do |t|
      t.integer :inventory_id
      t.date :from_date
      t.integer :price

      t.timestamps
    end

    add_index :prices, :inventory_id
  end
end
