class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :username
      t.date :post_date
      t.integer :page
      t.string :body
      t.text :file

        #t.timestamps
      t.references :to_do_list, foreign_key: true
    end
  end
end
