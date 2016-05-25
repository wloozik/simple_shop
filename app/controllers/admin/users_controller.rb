class Admin::UsersController < AdminController

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def destroy
    # Удалили юзера
    User.find(params[:id]).destroy
    # Переадресовали админа на страницу списка юзеров
    redirect_to admin_users_path
  end

end
