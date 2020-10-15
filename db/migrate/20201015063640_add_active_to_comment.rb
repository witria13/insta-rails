class AddActiveToComment < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :active, :boolean, default: true
  end
end
