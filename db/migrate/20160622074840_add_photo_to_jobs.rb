class AddPhotoToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :search_list_photo, :string
    add_column :jobs, :top_photo, :string
  end
end
