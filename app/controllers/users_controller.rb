class UsersController < ApplicationController
  def index
    @user = User.all
  end

  def show
    @user = User.find(current_user.id)
    @posts = @user.posts.all.order("created_at DESC")
  end

end
