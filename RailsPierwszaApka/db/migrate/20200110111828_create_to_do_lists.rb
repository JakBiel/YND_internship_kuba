class CreateToDoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_lists do |t|
      t.string :name
      t.integer :project_id

      t.timestamps
    end
  end
end
