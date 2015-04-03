class CommentsController < ApplicationController
  
  def create
    @city = City.find(params[:city_id])
    @post = Post.find(params[:post_id])
    @comment = @post.comments.build(comment_params)
    @comment.user = current_user
    if @comment.save
      respond_to do |f|
        f.html{redirect_to city_post_path(@city, @post)}
        f.js {}
      end
    else
      flash[:error] = "Comment did not go through!"
      redirect_to city_post_path(@city, @post)
    end
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
