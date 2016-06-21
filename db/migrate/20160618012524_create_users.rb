class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :name_kana
      t.string :mail
      t.string :password
      t.string :password_confirmation
      t.integer :prefecture_id
      t.string :city

      t.timestamps null: false
    end
  end
end
