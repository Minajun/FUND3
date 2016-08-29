class AddImageToVolunteerProject < ActiveRecord::Migration
  def change
    add_column :volunteer_projects, :image, :string
  end
end
