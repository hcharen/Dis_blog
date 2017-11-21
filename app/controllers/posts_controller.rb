class PostsController < ApplicationController

  def index
  end

# new action - gives simple_form the purpose of it's form
  def new
    @post = Post.new
  end

# this will SAVE the data in simple_form to the database & redirect
  def create
    @post = Post.create(post_params) # post params must be private!
    redirect_to post_path
  end

  private
# defines permitted attributes of the class
  def post_params
    params.require(:post).permit(:title, :body)
end
