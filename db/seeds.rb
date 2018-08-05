# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do |i|
    user = User.create(signin_name: "user#{i}", display_name: "User #{i}", password: "password", password_confirmation: "password")
    user.posts.create(title: "title #{i}", body: "body #{i}")
end

3.times do |i|
    Post.find(1).comments.create(body: "comment body #{i}")
end
