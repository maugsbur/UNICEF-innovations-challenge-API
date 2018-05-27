class CreateStockrooms < ActiveRecord::Migration[5.2]
  def change
    create_table :stockrooms do |t|
      t.string :name
      t.st_point :lonlat, geographic: true

      t.timestamps
    end
  end
end
