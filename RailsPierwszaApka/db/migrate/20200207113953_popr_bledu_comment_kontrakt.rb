class PoprBleduCommentKontrakt < ActiveRecord::Migration[5.2]
  def change
    change_table :comments do |t|
      t.rename :username, :user_name
    end
  end
end
