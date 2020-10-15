class AddActiveCommentToPost < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :active_comment, :boolean, default: true
  end
end
