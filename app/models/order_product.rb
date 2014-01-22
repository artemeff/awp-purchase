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

  def supplier_storage
    supplier.storages.where(product_id: product.id).first
  end

  def price
    if supplier_storage.present?
      supplier_storage.price
    else
      0
    end
  end

  def total
    quantity * price
  end
end
