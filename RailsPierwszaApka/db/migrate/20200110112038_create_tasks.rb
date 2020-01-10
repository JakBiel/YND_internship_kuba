class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.int :id
      t.string :desription
      t.date :due_date
      t.int :position
      t.boolean :done_status

      t.timestamps
    end
  end
end
