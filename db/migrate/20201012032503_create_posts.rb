class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :caption
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
