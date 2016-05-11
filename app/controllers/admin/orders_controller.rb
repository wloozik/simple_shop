# Контроллер для заказов в админке
class Admin::OrdersController < AdminController

  def index
    # Получили список всех товаров и сохранили его в переменную для доступа из вьюхи
    @orders = Order.all
  end

  def show
    # Нашли заказ по переданному id и сохранили его в переменную для доступа из вьюхи
    @order = Order.find(params[:id])
  end

  def update
    # Нашли заказ по переданному
    @order = Order.find(params[:id])
    # Обновили заказ
    @order.update(create_params)
    # Если обновление успешно - перешли на страницу заказа в админке, иначе вернули обратно
    if @order.valid?
      redirect_to admin_orders_path, flash: { notice: 'Заказ успешно помечен как выполненный!' }
    else
      render :edit
    end
  end

  private

  def create_params
    params.require(:order).permit(:status)
  end

end
