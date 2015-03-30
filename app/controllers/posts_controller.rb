class PostsController < ApplicationController

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def create
    @post = Post.new(post_params)
    @post.city_id = params[:city_id]
    @post.save
    redirect_to city_path(params[:city_id])
  end

  private

  def post_params
    params.require(:post).permit(:tagline, :description, :image)  
  end

end
