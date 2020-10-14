class RemoveFieldStatusFromLike < ActiveRecord::Migration[6.0]
  def up
    remove_column :likes, :status
  end

end
