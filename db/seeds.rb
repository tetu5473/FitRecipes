# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
# ユーザーを作成
user = User.find_or_create_by!(name: "Example User", email: "user@example.com") do |user|
  user.password = "password"
  user.password_confirmation = "password"
end

# レシピを作成
50.times do |n|
  user.recipes.create!(
    title: "Recipe #{n+1}",
    description: "This is a sample description for recipe #{n+1}.",
    calories: rand(100..500), # 100から500の間でランダムな数値
    prep_time: rand(10..60), # 準備時間を10分から60分の間でランダムに設定
    cook_time: rand(15..120) # 調理時間を15分から120分の間でランダムに設定
  )
end
