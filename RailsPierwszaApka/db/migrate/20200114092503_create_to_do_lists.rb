class CreateToDoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_lists do |t|
      t.string :name
      t.string :project_id

        #t.timestamps
      t.references :project, foreign_key: true
    end
  end
end
