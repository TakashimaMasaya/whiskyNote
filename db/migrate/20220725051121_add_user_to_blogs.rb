class AddUserToBlogs < ActiveRecord::Migration[5.2]
  def up
    execute 'DELETE FROM blogs;'
    add_reference :blogs, :user, null: false, index: true
  end

  def down
    remove_reference :blogs, :user, index: ture
  end
end
