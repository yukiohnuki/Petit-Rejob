class CreateKeeps < ActiveRecord::Migration
  def change
    create_table :keeps do |t|
      t.integer :user_id
      t.integer :job_id

      t.timestamps null: false
   end
   add_index :keeps, :user_id
    add_index :keeps, :job_id
    add_index :keeps, [:user_id, :job_id], unique: true
  end
end
