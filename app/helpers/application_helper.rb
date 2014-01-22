module ApplicationHelper
  def first_user
    Manager.first
  end

  def all_users
    Manager.all
  end

  def all_suppliers
    Supplier.all
  end

  def all_products
    Product.all
  end
end
