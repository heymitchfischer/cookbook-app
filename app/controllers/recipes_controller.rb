class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
  end

  def new
    
  end

  def create
    recipe = Recipe.new(
                        title: params[:title],
                        chef: params[:chef],
                        ingredients: params[:ingredients],
                        directions: params[:directions]
                        )
    recipe.save
  end

  def show
    @recipe = Recipe.find(params[:id])
  end
end
