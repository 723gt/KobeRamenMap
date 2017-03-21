class CreateOps < ActiveRecord::Migration[5.0]
  def change
    create_table :shop do |t|
      t.string :name,:null => false
    end
  end
end
