class Rating < ActiveRecord::Base
  has_many :topics
  has_many :posts

  def self.update_rating(rating_string)
    return Rating.none if rating_string.blank?

    if :topics
      rating.topics.build(severity: rating_string)
    elsif :posts
      rating.posts.build(severity: rating_string)
    end
  end

  enum severity: [ :PG, :PG13, :R ]

end

# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  severity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
