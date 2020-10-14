class AddFieldUsernameToUser < ActiveRecord::Migration[6.0]
  def up
    add_column :users, :username, :string
  end

  def down
    remove_column :users, :username
  end
end
