class PostsController < ApplicationController
  before_action :authenticate_user!

  def index

    @post = Post.new
    @comment = Comment.new
    @posts = Post.where(user_id: current_user).or(Post.where(user_id: current_user.friends)).order("created_at DESC")

  end

  def create
    @text_post = TextPost.new(body: post_params[:body])
    @post = @text_post.build_post(
      title: post_params[:title],
      body: post_params[:body], #cant be null yet
      user_id: current_user.id,
    )

    if @post.save && @text_post.save
        redirect_to root_path, notice: "Post created sucessfully!"
    else
        render root_path, alert: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
