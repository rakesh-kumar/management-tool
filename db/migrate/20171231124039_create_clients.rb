class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.integer :status_id
      t.string :source

      t.timestamps
    end
  end
end
