# Класс модели товара
class Product < ActiveRecord::Base
  # Добавить прикрепленный файл (картинку) к модели с указанием картинки по умолчинию
  has_attached_file :photo, default_url: 'product_photo_missing.png'

end