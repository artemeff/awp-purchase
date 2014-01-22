class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :manager_id
      t.datetime :ended_at
      t.boolean :approved

      t.timestamps
    end
  end
end
