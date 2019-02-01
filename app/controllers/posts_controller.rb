class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index

   @posts = Post.where(["origin LIKE?", "%#{params[:origin]}%"] &&
                       ["destination LIKE?", "%#{params[:destination]}%"])
  end
  def new
    @post = Post.new

  end

  def create
    @post = current_user.posts.build(post_params)
    respond_to do |format|
      if @post.save
        format.html { redirect_to root_path, notice: 'Blog was successfully created.' }
      else
        format.html { render :new }
      end
    end

    def show
    end
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:origin, :destination, :date, :time, :passengers, :cost, :vechile, :phone)
  end
end
