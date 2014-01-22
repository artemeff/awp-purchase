class Storage < ActiveRecord::Base
  # complex relation between product
  # and supplier: has many through

  belongs_to :product
  belongs_to :supplier
end
