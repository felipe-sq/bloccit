class AddRatingsToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :rating, :integer
    add_index :topics, :rating
  end
end
