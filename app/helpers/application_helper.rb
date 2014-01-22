module ApplicationHelper
  def active_link?(path)
    p %r{path.split('/')[1]}.match?(request.path)
    "active" if %r{request.path} =~ path.split('/')[1]
  end

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
