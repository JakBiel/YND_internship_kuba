class CreateToDoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_lists do |t|
      t.int :id
      t.string :name
      t.int :project_id

      t.timestamps
    end
  end
end
