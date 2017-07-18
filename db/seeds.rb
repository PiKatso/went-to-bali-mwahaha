require 'faker'

Product.destroy_all
User.destroy_all

1.times do |i|
  User.create(
    name: 'admin',
    email: 'admin@gmail.com',
    password: 'password',
    password_confirmation: 'password',
    admin: true
    )
  User.create(
    name: 'user',
    email: 'user@gmail.com',
    password: 'password',
    password_confirmation: 'password',
    admin: false
  )
end

20.times do |i|
  Product.create!(
    name: Faker::Lorem.word,
    price: rand(10...100),
    description: Faker::Lorem.sentence(5, false, 0).chop,
    image: "https://images-na.ssl-images-amazon.com/images/I/51Zh7gH41nL._SY355_.jpg"
    )
end

p "Created #{User.count} users"
p "Created #{Product.count} products"
