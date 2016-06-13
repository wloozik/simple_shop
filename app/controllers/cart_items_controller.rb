# Контроллер для товаров в корзине
class CartItemsController < ApplicationController

  def create
    # Ищем элемент корзины с аналогичным товаром
    @existing_item = CartItem.find_by(cart_id: create_params[:cart_id], product_id: create_params[:product_id] )
    # Если нашли - увеличиваем количество уже существующего элемента
    if @existing_item.present?
        @existing_item.update(quantity: @existing_item.quantity + create_params[:quantity].to_i)
    # Иначе создаём новый элемент корзины
    else
      CartItem.create(create_params)
    end
    # Переадресовали пользователя на страницу корзины
    redirect_to cart_path
  end

  def destroy
    # Удалили товар из корзины
    CartItem.find(params[:id]).destroy
    # Переадресовали пользователя на страницу корзины
    redirect_to cart_path
  end

  private

  def create_params
    params.require(:cart_item).permit(:cart_id, :product_id, :quantity)
  end

end