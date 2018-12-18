class PostsController < ApplicationController
  before_action :set_post, only:[:show, :edit, :update, :destroy]
  before_action :require_login
  
  def index
    @posts = Post.all
  end
  
  def new
    if params[:back]
    @post = Post.new(post_params)
  else
    @post = Post.new
    end
  end
  
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    if @post.save
      redirect_to posts_path, notice:"投稿しました！"
    else
      render'new'
    end
  end
  
  def show
    @post = post.find(params[:id])
    @user = @post.user
    @likes_count = Like.where(post_id: @post.id).count
  end
  
  def edit
    @post = post.find(params[:id])
  end
  
  def confirm
    @post = Post.new(post_params)
    @post.user_id = current_user.id
    render :new if @post.invalid?
  end
  
  def update
    if @post.update(post_params)
      redirect_to posts_path, notice:"投稿を編集しました！"
    else
      render 'edit'
    end
  end
  
  def destroy
    @post.destroy
    redirect_to posts_path, notice:"投稿を削除しました！"
  end
  
  private
  
  def post_params
    params.require(:post).permit(:objective, :place, :ideal, :image, :image_cache,
                                :image_a, :image_b, :image_a_cache, :image_b_cache)
  end
  
  def set_post
    @post = Post.find(params[:id])
  end
  
  def require_login
    unless logged_in?
      redirect_to new_session_path
    end
  end
end
