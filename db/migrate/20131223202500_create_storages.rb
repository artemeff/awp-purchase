class CreateStorages < ActiveRecord::Migration
  def change
    create_table :storages do |t|
      t.integer :product_id
      t.integer :supplier_id
      t.integer :quantity
      t.decimal :price

      t.timestamps
    end
  end
end
