class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(post_params)
    redirect_to posts_path
  end

  def edit
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params) ? (redirect_to posts_url) : (render 'edit')
  end

  private

  def post_params
    params.require(:post).permit(:caption, :image, :user_id)
  end
end
