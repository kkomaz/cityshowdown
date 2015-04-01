class UsersController < ApplicationController
  before_action :find_user, :only => [:show]

  def new

  end
  
  def show
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def set_api
    @photos = Instagram.new(@user.uid, @user.oauth_token)
  end

end
