class AddindexTousers < ActiveRecord::Migration[5.0]
  def change
    add_index :shops,:name,:unique => true
    change_column :shop,:name,:text,:null => false
  end
end
