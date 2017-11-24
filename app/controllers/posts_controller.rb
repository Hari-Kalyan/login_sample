class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @posts = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @posts = Post.new(params[:post])

    if @posts.save
      redirect_to posts_path, :notice => "Your post is saved"
    else
      render "new"
    end
  end

  def edit
    @posts = Post.find(params[:id])

  end

  def update

  end

  def destroy

  end
end
