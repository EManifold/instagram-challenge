class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image, :user_id)
  end
end
