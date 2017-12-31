class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name
      t.text :descriptions
      t.string :technology_id
      t.string :document
      t.string :project_type_id
      t.string :client_id

      t.timestamps
    end
  end
end
