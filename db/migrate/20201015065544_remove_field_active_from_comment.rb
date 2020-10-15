class RemoveFieldActiveFromComment < ActiveRecord::Migration[6.0]
  def up
  	remove_column :comments, :active
  end
end
