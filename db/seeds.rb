# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
State.destroy_all
Product.destroy_all
Category.destroy_all

State.create(STATES.map do |state|
    { name: state[0], has_service: state[2], minimum_age: state[3], abbreviation: state[1]  }
end)

Category.create(CATEGORIES.map do |category|
    { name: category }
end)

Product.create(PRODUCTS.map do |product|
    { 
        name: product[:name], 
        identifier: product[:ndc], 
        quantity: product[:qty], 
        price: product[:price], 
        instructions: product[:instructions], 
        category: Category.find_by(name: product[:category])
    }
end)
