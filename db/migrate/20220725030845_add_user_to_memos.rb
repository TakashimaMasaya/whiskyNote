class AddUserToMemos < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM memos;'
    add_reference :memos, :user, null: false, index: true
  end

  def down
    remove_reference :memos, :user, index:ture
  end
end
