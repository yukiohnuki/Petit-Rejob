class CreateJobTypesJobs < ActiveRecord::Migration
  def change
    create_table :job_types_jobs do |t|
      t.integer :job_type_id
      t.integer :job_id

      t.timestamps null: false
    end
  end
end
