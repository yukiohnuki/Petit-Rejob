class CreateSelectionStatuses < ActiveRecord::Migration
  def change
    create_table :selection_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
