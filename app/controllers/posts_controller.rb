class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
      redirect_to new_post_path

      # @post = Post.new(post_params)
      # if params[:back]
      #   render :new
      # else
      #   if @post.save
      #     redirect_to posts_path, notice: "つぶやきました！"
      #   else
      #     render :new
      #   end
      # end
  end

  def show
    @post = Post.find(params[:id])
  end

    private

  def post_params
  params.require(:post).permit(:id, :content)
  end

end
