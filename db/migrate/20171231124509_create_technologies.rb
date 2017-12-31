class CreateTechnologies < ActiveRecord::Migration[5.1]
  def change
    create_table :technologies do |t|
      t.string :name
      t.integer :status_id

      t.timestamps
    end
  end
end
