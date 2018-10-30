require 'faker'

#DELETE ALL
ActiveRecord::Base.connection.execute("TRUNCATE TABLE users RESTART IDENTITY")

10.times do
  user = User.create!(username: Faker::Internet.username, email: Faker::Internet.free_email, bio: Faker::Lorem.sentence)
end
