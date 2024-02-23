# app/controllers/recipes_controller.rb
class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :edit, :update, :destroy]
  
  # すべてのレシピを表示
  def index
    @recipes = Recipe.all
  end

  # 新しいレシピを作成
  def new
    @recipe = Recipe.new
  end

  # レシピをデータベースに保存
  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to @recipe, notice: 'レシピが作成されました。'
    else
      render :new
    end
  end

  # レシピの詳細を表示
  def show
  end

  # レシピを編集
  def edit
  end

  # レシピを更新
  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'レシピが更新されました。'
    else
      render :edit
    end
  end

  # レシピを削除
  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: 'レシピが削除されました。'
  end

  private
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    def recipe_params
      params.require(:recipe).permit(:title, :description, :calories, :prep_time, :cook_time)
    end
end
