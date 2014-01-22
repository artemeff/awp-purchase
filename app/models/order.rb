class Order < ActiveRecord::Base
  belongs_to :manager

  has_many :order_products
  has_many :products, through: :order_products

  accepts_nested_attributes_for :order_products
  accepts_nested_attributes_for :order_products,
                                :allow_destroy => true
end
