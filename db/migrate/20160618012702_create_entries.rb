class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.integer :user_id
      t.integer :job_id
      t.integer :selection_status_id
      t.string :name
      t.string :name_kana
      t.string :mail
      t.integer :prefecture_id
      t.string :city

      t.datetime :start_date
      t.datetime :interview_date

      t.timestamps null: false
    end
  end
end
