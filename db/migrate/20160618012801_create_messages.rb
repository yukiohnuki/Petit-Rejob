class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :user_id
      t.integer :client_id
      t.integer :entry_id
      t.text :body
      t.string :message_status_id
      t.timestamps null: false
    end
  end
end
