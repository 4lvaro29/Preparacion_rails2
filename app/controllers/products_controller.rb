class ProductsController < ApplicationController
  def index
  
  if params[:buscador].present?
    if params[:filtro_precio].present?
      if params[:filtro_precio] == "0..5000"
        @products = Product.where("name like ? and price BETWEEN ? AND ?","%#{params[:buscador]}%", 0, 5000)
      elsif params[:filtro_precio] == "5001..10000"
      elsif params[:filtro_precio] == "10001..+"
    @products = Product.where("name like ?", "%#{params[:buscador]}%")
  else
    @products = Product.all
    end
  end
end
end
end  
