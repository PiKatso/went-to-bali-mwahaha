require 'faker'

Product.destroy_all
User.destroy_all

admin = User.create(
  email: 'admin@gmail.com',
  password: 'password',
  admin: true
  )
user = User.create(
  email: 'user@gmail.com',
  password: 'password',
  admin: false
  )

20.times do |i|
  Product.create!(
    name: Faker::Lorem.word,
    price: rand(10...100),
    description: Faker::Lorem.sentence(5, false, 0).chop
    )
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
