class PostsController < ApplicationController

  before_action :find_post, :only => [:edit, :update, :destroy, :show]
  before_action :set_api, :only => [:edit, :new, :create]

  def show
    @city = City.find(params[:city_id])
    @comment = Comment.new
    @comments = @post.comments.reverse
    #this is abstracted to cities controller but kept in here to respond to html.
  end

  def new
    @post = Post.new
    @city = City.find(params[:city_id])
  end

  def edit
    @city = City.find(params[:city_id])
  end

  def create
    @post = current_user.posts.build(post_params)
    @city = City.find(params[:city_id])
    @post.city_id = @city.id
    if @post.save
      redirect_to city_post_path(@city, @post)
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

  def upvote
    @post = Post.find(params[:id])
    @post.upvote_by current_user

    respond_to do |format|
      format.html { redirect_to :back }
      format.js { }
    end
  end

  def downvote
    @post = Post.find(params[:id])
    @post.downvote_from current_user

    respond_to do |format|
      format.html { redirect_to :back }
      format.js { }
    end
  end


  private

  def post_params
    params.require(:post).permit(:tagline, :description, :image, :category_id, :pro_or_con, :instagram_pic)  
  end

  def find_post
    @post = Post.find(params[:id])
  end

  def set_api
    @photos = Instagram.new(current_user.uid, current_user.oauth_token)
  end

end
