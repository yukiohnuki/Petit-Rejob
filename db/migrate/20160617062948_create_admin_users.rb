class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :name
      t.string :mail
      t.string :password

      t.timestamps null: false
    end
  end
end
