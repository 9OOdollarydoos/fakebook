class PostsController < ApplicationController

  def index
    redirect_to new_user_session_path unless user_signed_in?

    @post = Post.new
    @comment = Comment.new
    @posts = Post.all.order("created_at DESC")

  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
        redirect_to root_path, notice: "Post created sucessfully!"
    else
        render :index, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
