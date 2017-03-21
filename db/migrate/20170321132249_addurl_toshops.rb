class AddurlToshops < ActiveRecord::Migration[5.0]
  def change
    add_column :shops,:url,:text
  end
end
