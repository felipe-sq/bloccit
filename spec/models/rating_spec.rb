require 'rails_helper'

RSpec.describe Rating, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  severity   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer
#  post_id    :integer
#
