class CreateShops < ActiveRecord::Migration[5.0]
  def change
    create_table :shops do |t|
      t.text :name
      t.text :address
      t.text :price
      t.text :genre

      t.timestamps
    end
  end
end
