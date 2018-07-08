# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

5.times do |i|
    Post.create(title: "title #{i}", body: "body #{i}")
end

3.times do |i|
    Post.find(1).comments.create(body: "comment body #{i}")
end
