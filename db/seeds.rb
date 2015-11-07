include RandomData

50.times do
  Post.create!(
    title: RandomData.random_sentence,
    body:  RandomData.random_paragraph
  )
end
posts = Post.all

100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"

Post.find_or_create_by(
  title: "We're Ready to Party; We're Ready!",
  body: "We hope you bring lots of spaghetti!"
)

Comment.find_or_create_by(
  post: posts.sample,
  body: "I brought lasagna!"
)
