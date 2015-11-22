class AddRatingsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :rating, :integer
    add_index :posts, :rating
  end
end
