class Supplier < ActiveRecord::Base
  has_many :storages
  has_many :products, through: :storages

  accepts_nested_attributes_for :storages
  accepts_nested_attributes_for :storages,
                                :allow_destroy => true
end
