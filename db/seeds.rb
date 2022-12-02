# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Bounty.destroy_all
Solution.destroy_all
User.destroy_all
puts "destroying users & bounties"
puts "creating users & bounties"

user = User.create!(email: "default@default.com", password: "123456", username: "Michel")
user.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115413024?v=4"), filename: "michel.png", content_type: "image/png")
user.save!

user1 = User.create!(email: "default1@default.com", password: "123456", username: "Gwendolyne")
user1.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/96949079?v=4"), filename: "Gwendolyne.png", content_type: "image/png")
user1.save!

user2 = User.create!(email: "default2@default.com", password: "123456", username: "Josianne")
user2.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/106176972?v=4"), filename: "Josianne.png", content_type: "image/png")
user2.save!

user3 = User.create!(email: "default3@default.com", password: "123456", username: "Bernard")
user3.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115095838?v=4"), filename: "Bernard.png", content_type: "image/png")
user3.save!

user4 = User.create!(email: "default4@default.com", password: "123456", username: "Superliver")
user4.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115033783?v=4"), filename: "Superliver.png", content_type: "image/png")
user4.save!

user5 = User.create!(email: "default5@default.com", password: "123456", username: "Tocard")
user5.photo.attach(io: URI.open("https://avatars.githubusercontent.com/u/115413668?v=4"), filename: "Tocard.png", content_type: "image/png")
user5.save!

bounty1 = Bounty.create!(title: "variable", content: "I can't get my variable to display anything", price_cents: 1_099, difficulty_level: 1, github_repo: "https://github.com/roMPrd/RubyHunters", user: user)
bounty2 = Bounty.create!(title: "error 404", content: "can't find the proper html anchor", price_cents: 1_500, difficulty_level: 1, github_repo: "https://github.com/lewagon/rails-watch-list", user: user)
bounty12 = Bounty.create!(title: "meatball", content: "my poorly designed cheap webapp isn't working", price_cents: 1_500, difficulty_level: 1, github_repo: "https://github.com/lewagon/rails-watch-list", user: user5)
bounty3 = Bounty.create!(title: "db corrupted", content: "my junior dev Ahmadou broke my code !", price_cents: 10_500, difficulty_level: 3, github_repo: "https://github.com/lewagon/python-scraping-workshop", user: user)
bounty4 = Bounty.create!(title: "iteration on array", content: "I can't iterate properly", price_cents: 4_500, difficulty_level: 2, github_repo: "https://github.com/lucasgday/cryptozombies", user: user)
bounty5 = Bounty.create!(title: "localize the barycenter of a triangle", content: "need to localize the barycenter or centroid of a triangle", price_cents: 45000, difficulty_level: 4, github_repo: "https://github.com/dmilon/osteopathe-orlienas", user: user1)
bounty6 = Bounty.create!(title: "find maximum and minimum values of a list", content: "I need two functions that recieves a list of integers", price_cents: 3500, difficulty_level: 1, github_repo: "https://github.com/juliends/parks_and_plants", user: user1)
bounty7 = Bounty.create!(title: "if..else and ternary operator", content: "need a complete function", price_cents: 11_000, difficulty_level: 2, github_repo: "https://github.com/juliends/rails-7-testing", user: user1)
bounty8 = Bounty.create!(title: "is it a palindrome?", content: "need a full case insensitive function", price_cents: 6_100, difficulty_level: 2, github_repo: "https://github.com/sarahlafer/baby-robin", user: user1)
bounty9 = Bounty.create!(title: "surface covered", content: " write a function which calculates the area covered by a union of rectangles.", price_cents: 12500, difficulty_level: 3, github_repo: "https://github.com/sarahlafer/blog-prep-288", user: user1)
bounty10 = Bounty.create!(title: "binomial expansion", content: "write a program that can do some algebra", price_cents: 20_500, difficulty_level: 4, github_repo: "https://github.com/quynpham/adoptme", user: user1)
bounty11 = Bounty.create!(title: "How many arguments", content: "can't get my function that takes a random number of arguments to work", price_cents: 10_500, difficulty_level: 2, github_repo: "https://github.com/quynpham/adoptme", user: user)
solution1 = Solution.create!(content: "you forgot to wrap your string with '' !", bounty: bounty1, user: user3, github_repo:"https://github.com/heartcombo/devise")
solution2 = Solution.create!(content: "this is an <a href> issue.", bounty: bounty2, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution3 = Solution.create!(content: "in this case <%=link_to%> could be appropriate", bounty: bounty2, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution4 = Solution.create!(content: "use db:rollback to reverse the said migration !", bounty: bounty3, user: user3, github_repo:"https://github.com/roMPrd/RubyHunters")
solution5 = Solution.create!(content: "i created a migration that suppresses the table column", bounty: bounty3, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution6 = Solution.create!(content: "i used a map", bounty: bounty4, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution7 = Solution.create!(content: "you should simply use each do", bounty: bounty4, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution8 = Solution.create!(content: "used a very simple 3 parameters function", bounty: bounty5, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution9 = Solution.create!(content: "i managed to pull it in a single function", bounty: bounty6, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution10 = Solution.create!(content: "wrote two functions which take the said list as an argument", bounty: bounty6, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution11 = Solution.create!(content: "wrote a simple one line function", bounty: bounty7, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution12 = Solution.create!(content: "the function i wrote works on palindromes and is case insensitive", bounty: bounty8, user: user2, github_repo:"https://github.com/roMPrd/RubyHunters")
solution13 = Solution.create!(content: "the surface covered by the area is correctly calculated, see the tests", bounty: bounty9, user: user4, github_repo:"https://github.com/roMPrd/RubyHunters")
solution14 = Solution.create!(content: "the algebraical results validate the tests", bounty: bounty10, user: user3, github_repo:"https://github.com/roMPrd/RubyHunters")
solution15 = Solution.create!(content: "you forgot an end on your loop", bounty: bounty11, user: user3, github_repo:"https://github.com/heartcombo/devise")
solution15 = Solution.create!(content: "added proper routes to make your pile of garbage work !", bounty: bounty12, user: user, github_repo:"https://github.com/heartcombo/devise")
puts "BOUNTIES & USERS SUCCESSFULLY CREATED MOTHERFUCKS"
