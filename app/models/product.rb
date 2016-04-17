# Класс модели товара
class Product < ActiveRecord::Base
  # Добавить прикрепленный файл (картинку) к модели с указанием картинки по умолчинию
  has_attached_file :photo, default_url: 'product_photo_missing.png'
  # Проверяет что прикрепленный файл точно картинка
  validates_attachment :photo, content_type: { content_type: %w(image/jpg image/jpeg image/png image/gif) }

  # Проверяет что при создании товара указано имя, описание итд
  validates :name, :description, :quantity, :price, presence: true
end
