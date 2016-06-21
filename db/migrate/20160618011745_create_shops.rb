class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.integer :client_id
      t.string :name

      t.timestamps null: false
    end
  end
end
