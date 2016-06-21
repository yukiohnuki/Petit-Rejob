class CreateJobTypesUsers < ActiveRecord::Migration
  def change
    create_table :job_types_users do |t|
      t.integer :job_type_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
