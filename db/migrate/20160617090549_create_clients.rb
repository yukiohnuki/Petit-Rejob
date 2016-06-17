class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :mail
      t.string :password
      t.string :password_confirmation
      t.timestamps null: false
    end
  end
end
