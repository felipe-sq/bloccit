include RandomData

FactoryGirl.define do
  factory :label do
    name RandomData.random_sentence
    post
    topic
    user
  end
end
