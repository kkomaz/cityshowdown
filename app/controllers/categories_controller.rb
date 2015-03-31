class CategoriesController < ApplicationController
  def show
    @city = City.find(params[:city_id])
    @category = Category.find(params[:id])
    @posts = @city.posts.where(category_id = @category.id)
  end
end
