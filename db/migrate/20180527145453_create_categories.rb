class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description

      t.timestamps
    end

    add_column :products, :category_id, :integer
    add_index  :products, :category_id
  end
end
