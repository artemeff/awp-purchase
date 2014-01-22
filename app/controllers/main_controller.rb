class MainController < ApplicationController
  def index
    @managers  = Manager.all
    @products  = Product.all
    @suppliers = Supplier.all
  end
end
