# Класс модели пользователя
class User < ActiveRecord::Base

  # Модули devise
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable
  has_many :orders, dependent: :destroy


  def cart
    Cart.find_or_create_by(user_id: id)
  end
end
