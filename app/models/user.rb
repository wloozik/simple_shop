class User < ActiveRecord::Base

  # Модули devise
  devise :database_authenticatable, :registerable, :confirmable, :recoverable, :rememberable, :validatable

end
