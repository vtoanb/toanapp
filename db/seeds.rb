breakfast = Section.create(name: 'Breakfast', count: 0)
lunch = Section.create(name: 'Lunch', count: 0)
dinner = Section.create(name: 'Dinner', count: 0)
drinks = Section.create(name: 'Drinks', count: 0)
# let create 10 foods for breakfast
# 10.times do
#   puts Faker::Food.spice
# end
10.times do
  breakfast.foods.create(name: Faker::Name.name,
                         description: Faker::Lorem.paragraph,
                         count: 0,
                         price: Faker::Number.number(5),
                         cuisine: Faker::Address.country,
                         image_url: Faker::Placeholdit.image("320x240", 'jpg'))
  lunch.foods.create(name: Faker::Name.name,
                     description: Faker::Lorem.paragraph,
                     count: 0,
                     price: Faker::Number.number(5),
                     cuisine: Faker::Address.country,
                     image_url: Faker::Placeholdit.image("320x240", 'jpg'))
  dinner.foods.create(name: Faker::Name.name,
                      description: Faker::Lorem.paragraph,
                      count: 0,
                      price: Faker::Number.number(5),
                      cuisine: Faker::Address.country,
                      image_url: Faker::Placeholdit.image("320x240", 'jpg'))
  drinks.foods.create(name: Faker::Name.name,
                      description: Faker::Lorem.paragraph,
                      count: 0,
                      price: Faker::Number.number(5),
                      cuisine: Faker::Address.country,
                      image_url: Faker::Placeholdit.image("320x240", 'jpg'))
end



# breakfast = Section.create(name: 'Breakfast', count: 0)
# lunch = Section.create(name: 'Lunch', count: 0)
# dinner = Section.create(name: 'Dinner', count: 0)
# drinks = Section.create(name: 'Drinks', count: 0)
# # let create 10 foods for breakfast
# # 10.times do
# #   puts Faker::Food.spice
# # end
# 10.times do
#   breakfast.foods.create(name: Faker::Food.spice,
#                          description: Faker::Lorem.paragraph,
#                          count: 0,
#                          price: Faker::Number.number(5),
#                          cuisine: Faker::Address.country,
#                          image_url: Faker::Placeholdit.image("320x240", 'jpg'))
#   lunch.foods.create(name: Faker::Food.spice,
#                      description: Faker::Lorem.paragraph,
#                      count: 0,
#                      price: Faker::Number.number(5),
#                      cuisine: Faker::Address.country,
#                      image_url: Faker::Placeholdit.image("320x240", 'jpg'))
#   dinner.foods.create(name: Faker::Food.spice,
#                       description: Faker::Lorem.paragraph,
#                       count: 0,
#                       price: Faker::Number.number(5),
#                       cuisine: Faker::Address.country,
#                       image_url: Faker::Placeholdit.image("320x240", 'jpg'))
#   drinks.foods.create(name: Faker::Food.spice,
#                       description: Faker::Lorem.paragraph,
#                       count: 0,
#                       price: Faker::Number.number(5),
#                       cuisine: Faker::Address.country,
#                       image_url: Faker::Placeholdit.image("320x240", 'jpg'))
# end
