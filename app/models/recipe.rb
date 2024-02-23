# app/models/recipe.rb
class Recipe < ApplicationRecord
  validates :title, :description, :calories, :prep_time, :cook_time, presence: true
  validates :calories, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  
  # 関連付け
  belongs_to :user
  has_many :ingredients
  has_many :steps

  # 画像アップロードなどの機能を追加する場合は、ここに追記します
end
