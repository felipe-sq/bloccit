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

puts "#{Post.count}"
Post.find_or_create_by(
  title: "We're Ready to Party; We're Ready!",
  body: "We hope you bring lots of spaghetti!"
)
puts "#{Post.count}"

puts "#{Comment.count}"
Comment.find_or_create_by(
  post_id: Post.find_by(title: "We're Ready to Party; We're Ready!", body: "We hope you bring lots of spaghetti!"),
  body: "I brought lasagna!"
)
puts "#{Comment.count}"

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
