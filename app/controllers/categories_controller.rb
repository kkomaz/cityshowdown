class CategoriesController < ApplicationController
  def show
    @categories = Category.all
    @city = City.find(params[:city_id])
    @category = Category.find(params[:id])
    @posts = @city.posts.where(:posts => {:category_id => @category.id})

    respond_to do |f|
      f.js {}
      f.html {}
    end
  end
end
