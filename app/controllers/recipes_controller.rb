class RecipesController < ApplicationController
  def index
    @search= params[:search] || 'chocolate'
    @result= Recipe.for(@search)
   # puts "===========================#{@result}-----------"
  end
end
