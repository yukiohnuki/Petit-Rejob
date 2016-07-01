class CreateJobTypesEntries < ActiveRecord::Migration
  def change
    create_table :job_types_entries do |t|
      t.integer :job_type_id
      t.integer :entry_id

      t.timestamps null: false
    end
  end
end
