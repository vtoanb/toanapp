# This file should contain all the record creation needed
#   seed the database with its default values.
# The data can then be loaded with the rails db:seed
# command (or created alongside the database with db:setup).
#
# Examples:
#
# movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
# Character.create(name: 'Luke', movie: movies.first)
# create sections
breakfast = Section.create(name: 'Breakfast', count: 0)
lunch = Section.create(name: 'Lunch', count: 0)
dinner = Section.create(name: 'Dinner', count: 0)
drinks = Section.create(name: 'Drinks', count: 0)
# let create 10 foods for breakfast
# 10.times do
#   puts Faker::Food.spice
# end
10.times do
  breakfast.foods.create(name: Faker::Food.spice,
                         description: Faker::Lorem.paragraph,
                         count: 0,
                         price: Faker::Number.number(5),
                         cuisine: Faker::Address.country,
                         image_url: "http://loremflickr.com/320/240?random=#{Faker::Number.number(1)}")
  lunch.foods.create(name: Faker::Food.spice,
                     description: Faker::Lorem.paragraph,
                     count: 0,
                     price: Faker::Number.number(5),
                     cuisine: Faker::Address.country,
                     image_url: "http://loremflickr.com/320/240?random=#{Faker::Number.number(1)}")
  dinner.foods.create(name: Faker::Food.spice,
                      description: Faker::Lorem.paragraph,
                      count: 0,
                      price: Faker::Number.number(5),
                      cuisine: Faker::Address.country,
                      image_url: "http://loremflickr.com/320/240?random=#{Faker::Number.number(1)}")
  drinks.foods.create(name: Faker::Food.spice,
                      description: Faker::Lorem.paragraph,
                      count: 0,
                      price: Faker::Number.number(5),
                      cuisine: Faker::Address.country,
                      image_url: "http://loremflickr.com/320/240?random=#{Faker::Number.number(1)}")
end
