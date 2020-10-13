class PostsController < ApplicationController
  before_action :find, only: [:show, :edit, :update, :like]
  
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    if @post.valid?
      redirect_to post_path(@path)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      redirect_to post_path(@path)
    else
      flash[:errors] = @post.errors.full_messages
      redirect_to edit_post_path
    end
  end

  def show
  end

  def like
    @post.likes += 1
    @post.save
    render :show
  end

  private

  def find 
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:title, :content, :likes, :blogger_id, :destination_id)
  end
end

