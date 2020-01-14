class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :body

        #t.timestamps
      t.references :task, foreign_key: true
    end
  end
end
