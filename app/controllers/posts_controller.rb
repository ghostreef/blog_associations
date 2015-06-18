class PostsController < ApplicationController


  before_action :find_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.all.order(:created_at)
  end

  def show

  end

  def new
    @post = Post.new

  end

  def edit
    
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to @post, notice: 'Post successfully created.'
    else
      flash[:error] = 'Failed to create post.'
      render :new
    end
  end

  def update
    if @post.update(post_params)
      redirect_to @post, notice: 'Post successfully created.'
    else
      render :edit
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_url, notice: 'Post successfully destroyed.'
    else
      flash[:error] = 'Failed to destroy post.'
      redirect_to posts_url
    end
  end

  private
  def find_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :text)
  end

end
