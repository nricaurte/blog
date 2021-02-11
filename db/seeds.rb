# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#
def create_user(email: nil, password_random: false, model_type: "User")
  user = User.where(email: email)
  if user.size == 0
      pwd = password_random ? Faker::Internet.unique.password : "SyBlogRuby"
      email ||= Faker::Internet.email
      attributes = {
        email: email, password: pwd,
        password_confirmation: pwd, confirmed_at: Time.current,
        created_at: Faker::Date.backward(days: 60)
      }
      user = User.new(attributes)
      user.skip_confirmation!
      user.save!
  end
rescue RuntimeError => e
  puts e.message
end

def bulk_create_user(users = 1)
  users.times { create_user }
end

# Users
bulk_create_user(20)
#
# users demo
%w[andres@demo.com fer@demo.com].each do |email|
  create_user(email: email)
end

#Categories
5.times do
  Category.create name: Faker::Company.name
end

# Articles
100.times do
  Article.create content: Faker::Quotes::Shakespeare.hamlet_quote, category: Category.all.sample, user: User.all.sample, state: Faker::Base.rand_in_range(1,2), title: Faker::Space.agency
end
#
# Commentaries
100.times do
  Comment.create text: Faker::Quotes::Shakespeare.hamlet_quote, user: User.all.sample, article: Article.all.sample
end
