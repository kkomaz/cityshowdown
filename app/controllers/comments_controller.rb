class CommentsController < ApplicationController
  
  def create
    @city = City.find(params[:city_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
    redirect_to city_post_path(@city, @post)
  end

  def destroy
    @city = City.find(params[:city_id])
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to city_post_path(@city, @post)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

end
