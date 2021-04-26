class LikesController < ApplicationController
  def create
    @like = Like.new(user_id: current_user.id, post_id: params[:post_id])

    if @like.save
      redirect_to root_path, notice: "Post Liked!"
    else
      redirect_to root_path, status: :unprocessable_entity
    end

  end

  def destroy
    @like = Like.find(params[:id])
    if @like.destroy
      redirect_to root_path, notice: "Post unliked"
    else
      redirect_to root_path, status: :unprocessable_entity
    end
  end


end
