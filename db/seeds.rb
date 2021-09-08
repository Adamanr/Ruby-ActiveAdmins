# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def create_admin
  AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')
end

def create_users
  User.create!(email: 'a@a.ru', password: 'aaaaaa')
  User.create!(email: 'b@b.ru', password: 'bbbbbb')
end

def create_blogs
  Blog.create!(title: 'aaaaa', body: 'AAAAAA', user_id: 1)
  Blog.create!(title: 'bb', body: 'BBBBB', user_id: 2)
  Blog.create!(title: 'CCC', body: 'ccccc', user_id: 2)
end

def create_replies
  Reply.create!(text: 'AAAAA', user_id: 1, blog_id: 1)
  Reply.create!(text: 'BBBBB', user_id: 2, blog_id: 1)
  Reply.create!(text: 'CCCCC', user_id: 2, blog_id: 1)
  Reply.create!(text: 'DDDDD', user_id: 2, blog_id: 2)
end

if Rails.env.development?
  create_admin
  create_users
  create_blogs
  create_replies
end