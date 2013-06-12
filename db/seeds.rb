require 'faker'

5.times do
  User.create(
    name: Faker::Name.name,
    about: Faker::Lorem.paragraph
    )
end

10.times do
  Post.create(
    title: Faker::Lorem.sentence,
    body: Faker::Lorem.paragraph(5),
    user_id: rand(1..5)
    )
end

100.times do
  Comment.create(
    text: Faker::Lorem.paragraph,
    user_id: rand(1..5),
    post_id: rand(1..10)
    )
end

voteables = Post.all.to_a + Comment.all.to_a

1000.times do
  vote = Vote.create(
    direction: rand(0..1)
  )
  voteables.sample.votes << vote
end
