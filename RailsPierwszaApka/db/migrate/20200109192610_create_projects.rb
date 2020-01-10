class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.int :id
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
