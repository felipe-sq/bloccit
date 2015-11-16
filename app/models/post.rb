class Post < ActiveRecord::Base
  belongs_to :topic
  has_many :comments, dependent: :destroy
end

# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer
#
