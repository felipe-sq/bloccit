include RandomData

FactoryGirl.define do
  factory :comment do
    body RandomData.random_paragraph
    post
    topic
    user
  end
end
