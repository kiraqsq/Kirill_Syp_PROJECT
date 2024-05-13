# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Image.delete_all
Image.reset_pk_sequence
Image.create([

{name: 'Cat1', file: 'first.jpg', theme_id: 2},
{name: 'Cat2', file: 'second.jpg', theme_id: 2},
{name: 'Cat3', file: 'third.jpg', theme_id: 3},
{name: 'Cat4', file: 'fourth.jpg', theme_id: 3},
{name: 'Cat5', file: 'fifth.jpg', theme_id: 4},
{name: 'Cat6', file: 'sixth.jpg', theme_id: 4},
{name: 'Cat7', file: 'seventh.jpg', theme_id: 5},
{name: 'Cat8', file: 'eighth.jpg', theme_id: 5},
{name: 'Cat9', file: 'nineth.jpg', theme_id: 6},
{name: 'Cat10', file: 'tenth.jpg', theme_id: 6},
])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

{name: "-----"},      # 1 Нет темы
{name: "Кто лучше?"},      # 2
{name: "А тут кто лучше?"},      # 3
{name: "А здесь кто?"},      # 4
{name: "А если выбирать вот тут?"},      # 5
{name: "Кто лучше тут?"},      # 6
])

User.delete_all
User.reset_pk_sequence
User.create([

{name: "Example User", email: "example@railstutorial.org", password: "222222", password_confirmation: "222222"},
])




