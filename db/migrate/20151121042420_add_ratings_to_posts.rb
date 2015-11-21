class AddRatingsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :integer, :post_id
    add_index :posts, :integer
  end
end
