class PostsController < ApplicationController
  before_action :authenticate_user!

  def index

    @post = Post.new
    @comment = Comment.new
    @posts = Post.where(user_id: current_user).or(Post.where(user_id: current_user.friends)).order("created_at DESC")

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
