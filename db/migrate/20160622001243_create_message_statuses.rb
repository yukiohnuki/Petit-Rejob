class CreateMessageStatuses < ActiveRecord::Migration
  def change
    create_table :message_statuses do |t|
      t.integer :user_id
      t.integer :client_id
      t.integer :entry_id
      t.string :status

      t.timestamps null: false
    end
  end
end
