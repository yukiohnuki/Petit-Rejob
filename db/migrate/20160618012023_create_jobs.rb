class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.integer :client_id
      t.integer :shop_id
      t.integer :recommend_point
      t.string :search_list_photo
      t.string :top_photo
      t.string :title
      t.integer :prefecture_id
      t.string :city
      t.string :salary
      t.text :message

      t.timestamps null: false
    end
  end
end
