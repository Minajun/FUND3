class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :status
      t.integer :total_amount
      t.date :deadline
      t.integer :volunteerprj_id
      t.integer :leader_id
      t.string :description
      t.string :present_name
      t.integer :prizewinner_id

      t.timestamps null: false
    end
  end
end
