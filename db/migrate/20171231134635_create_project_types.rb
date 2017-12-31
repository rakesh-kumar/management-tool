class CreateProjectTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :project_types do |t|
      t.string :name
      t.integer :status_id

      t.timestamps
    end
  end
end
