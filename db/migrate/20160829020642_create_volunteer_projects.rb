class CreateVolunteerProjects < ActiveRecord::Migration
  def change
    create_table :volunteer_projects do |t|
      t.string :name
      t.string :description
      t.string :link

      t.timestamps null: false
    end
  end
end
