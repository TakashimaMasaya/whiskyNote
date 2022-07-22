class AddUsertoWhiskies < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM WHISKIES'
    add_reference :whiskies, :user, null: false, index: true
  end

  def down
    remove_reference :whiskies, :user, index: true
  end
end
