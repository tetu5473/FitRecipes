# app/models/recipe.rb
class Recipe < ApplicationRecord
  # バリデーションを設定します。
  validates :title, presence: true
  validates :description, presence: true
  validates :calories, numericality: { only_integer: true }
  validates :prep_time, numericality: { only_integer: true }
  validates :cook_time, numericality: { only_integer: true }

  # 関連付け
  belongs_to :user
  has_many :ingredients
  has_many :steps

  # 画像アップロードなどの機能を追加する場合は、ここに追記します
end
