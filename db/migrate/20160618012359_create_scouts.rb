class CreateScouts < ActiveRecord::Migration
  def change
    create_table :scouts do |t|
      t.integer :user_id
      t.integer :job_id
      t.integer :client_id
      t.integer :status, default: 0, null: false, limit: 2

      t.timestamps null: false
    end
  end
end
