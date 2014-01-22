class AddSupplierIdToOrderProducts < ActiveRecord::Migration
  def change
    add_column :order_products, :supplier_id, :integer
  end
end
