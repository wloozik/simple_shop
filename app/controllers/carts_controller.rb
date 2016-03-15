# Контроллер для корзины
class CartsController < ApplicationController

  def show
    # Нашли корзину текущего пользователя и сохранили ее в переменную для доступа из вьюхи
    @cart = current_user.cart
  end

end
