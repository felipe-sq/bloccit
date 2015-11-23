class ChangeRatingToRatingIdOnTopicsAndPosts < ActiveRecord::Migration
  def change
    rename_column(:posts, :rating, :rating_id)
    rename_column(:topics, :rating, :rating_id)
  end
end
