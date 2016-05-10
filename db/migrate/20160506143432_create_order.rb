class CreateOrder < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.column :status, :integer, default: 0
      t.timestamps
    end
  end
end
