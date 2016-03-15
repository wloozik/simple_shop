class CreateProducts < ActiveRecord::Migration
  def change
    # Создаем таблицу для Товаров
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :quantity
      t.attachment :photo

      t.timestamps
    end
  end
end
