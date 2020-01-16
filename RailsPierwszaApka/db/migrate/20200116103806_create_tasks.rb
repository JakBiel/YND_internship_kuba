class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :due_date
      t.integer :position
      t.boolean :done_status

        #t.timestamps
      t.references :to_do_list, foreign_key: true
    end
  end
end
