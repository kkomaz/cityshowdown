class PostsController < ApplicationController

  before_action :find_post, :only => [:edit, :update, :destroy, :show]

  def show
    @city = City.find(params[:city_id])
    @comment = Comment.new
  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def edit
    @city = City.find(params[:city_id])
  end

  def create
    binding.pry
    @post = current_user.posts.build(post_params)
    @post.city_id = params[:city_id]
    if @post.save
      redirect_to city_path(@post.city)
    else
      render 'new'
    end
  end

  def update
    if @post.update(post_params)
      redirect_to city_post_path
    else
      render 'edit'
    end
  end

  def destroy
    @city = City.find(params[:city_id])
    @post.destroy
    redirect_to city_path(@city)
  end

  private

  def post_params
    params.require(:post).permit(:tagline, :description, :image, :category_id)  
  end

  def find_post
    @post = Post.find(params[:id])
  end

end
