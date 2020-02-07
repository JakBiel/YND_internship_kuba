class UsunacPage < ActiveRecord::Migration[5.2]
  def change
    change_table :comments do |t|
      t.remove :page
    end
  end
end
