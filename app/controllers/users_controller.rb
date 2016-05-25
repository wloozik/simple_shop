class UsersController < ApplicationController

  def edit
    # Нашли товар по переданному id и сохранили его в переменную для доступа из вьюхи
    @user = User.find(params[:id])
  end

  def update
    # Нашли товар по переданному
    @user = User.find(params[:id])
    # Обновили товар
    @user.update(create_params)
    # Если обновление успешно - перешли на страницу товара в админке, иначе вернули обратно
    if @user.valid?
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

    def create_params
    params.require(:user).permit(:name, :address, :phone)
  end

end
