class AdminController < ActionController::Base

  # Не пускать никого не авторизованного в админку
  before_action :authenticate_admin!

end
