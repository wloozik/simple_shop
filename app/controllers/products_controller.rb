# Контроллер для товаров
class ProductsController < ApplicationController

  def index
    # Получили список всех товаров и сохранили его в переменную для доступа из вьюхи
    @products = Product.all
  end

  def show
    # Нашли товар по переданному id и сохранили его в переменную для доступа из вьюхи
    @product = Product.find(params[:id])
  end

end
