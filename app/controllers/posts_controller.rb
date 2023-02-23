class PostsController < ApplicationController
  
  def index

    @posts = Post.orderid: :asc)


  def show

    @post = Post.find(params[:id])

  end

  def new

    @post = Post.new

  end

  def create

    post = Post.create!(post_params)
    redirect_to post

  end

  def update
  end

  def destroy

    post = Post.find(paramas[:id])
    post.destroy!
    redirect_to root_path

  end


  private
  
  def post_params
    params.require(:post).permit(:title, :content)
  end


end
