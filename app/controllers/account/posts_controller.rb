class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @post = current_user.find(params[:id])
  end

  def destroy
    @post = current_user.post.find(params[:id])
    @post.destroy
    redirect_to current_user.posts_path, alert: 'Post deleted'
  end
end
