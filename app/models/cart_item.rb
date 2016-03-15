# Модель товара в корзине
class CartItem < ActiveRecord::Base

  belongs_to :cart
  belongs_to :product

  # Стоимость с учетом количества
  def cost
    product.price * quantity
  end

end
