# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: "test1@test.com", nickname: "neulAdmin1", password: "aaaa1234")
User.create!(email: "test2@test.com", nickname: "neulAdmin2", password: "aaaa1234")
User.create!(email: "test3@test.com", nickname: "neulAdmin3", password: "aaaa1234")
User.create!(email: "test4@test.com", nickname: "neulAdmin4", password: "aaaa1234")
User.create!(email: "test5@test.com", nickname: "neulAdmin5", password: "aaaa1234")
User.create!(email: "test6@test.com", nickname: "neulAdmin6", password: "aaaa1234")
User.create!(email: "test7@test.com", nickname: "neulAdmin7", password: "aaaa1234")




#Music.create!(@input)


# @input = File.open("all_list.txt", "r")
#  @input.each_line do |one_row|
#    Music.create!([{}])
#  end


# my_hash = { one: 1, two: 2, three: 3 }
#
# my_hash.each_key { |k| print k, " " }
# # ==> one two three

content = File.read("all_list.txt")
    content.each_line do |line|
       arr = line.split('[singer: ')
       line = arr[1].split(', title: ')
       last = line[1].split(', ts: ')
       l_last = last[1].split('],')

       Music.create!(singer: "#{line[0]}", title: "#{last[0]}", ts: "#{l_last[0]}")

    end
