class PostsController < ApplicationController
  def index
    @posts = Post.all
    @results = Post.search(params[:criteria])
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    videoId = post_params[:video_url].split("=")[1]
    title = post_params[:title]
    description = post_params[:description]
    @post = Post.new(video_url: videoId, title: title, description: description)
    if @post.save
      redirect_to posts_path
    else
      render :new
    end
  end


  private
  def post_params
    params.require(:post).permit(:video_url, :title, :description)
  end


end
