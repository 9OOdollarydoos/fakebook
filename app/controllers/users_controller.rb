class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(current_user.id)
    @users = User.all
    @posts = @user.posts.all.order("created_at DESC")
    @comment = Comment.new
  end

end
