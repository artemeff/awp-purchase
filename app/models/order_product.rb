class OrderProduct < ActiveRecord::Base
  # complex relation between order
  # and product: has many through

  belongs_to :order
  belongs_to :product
  belongs_to :supplier

  def name
    product.name
  end

  def supplier_name
    supplier.name
  end

  def price
    supplier.storages.where(product_id: product.id).first.price
  end

  def total
    quantity * price
  end
end
