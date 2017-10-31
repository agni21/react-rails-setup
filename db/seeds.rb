# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Quote.delete_all

Quote.create! (  
  [
    {
      id: 1,
      text: "Be yourself; everyone else is already taken.",
      author: "Oscar Wilde"
    },
    {
      id: 2,
      text: "Two things are infinite: the universe and human stupidity; " \
            "and I'm not sure about the universe.",
      author: "Albert Einstein"
    },
    {
      id: 3,
      text: "So many books, so little time.",
      author: "Frank Zappa"
    },
    {
      id: 4,
      text: "Be the change that you wish to see in the world",
      author: "Mahatma Gandhi"
    },
    {
      id: 5,
      text: "If you tell the truth, you don't have to remember anything.",
      author: "Mark Twain"
    }
  ]
)
puts "Quotes seeded!"

# puts "Email: "  
# STDOUT.flush  
# email = gets.chomp  
# puts "Password: "
# pwd = gets.chomp

AdminUser.delete_all

# AdminUser.create!(:email => email, :password => pwd, :password_confirmation => pwd)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?