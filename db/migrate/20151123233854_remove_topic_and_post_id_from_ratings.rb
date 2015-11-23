class RemoveTopicAndPostIdFromRatings < ActiveRecord::Migration
  def change
    remove_columns(:ratings, :topic_id, :post_id)
  end
end
