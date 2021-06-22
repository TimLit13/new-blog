class PostsController < ApplicationController
  
  before_action :set_post, only: %i[show edit update destroy]
  before_action :set_posts, only: %i[index]

#=======================================================================================
  def index
    
  end
 
  def show

  end
#=======================================================================================
  def new
    @post = Post.new

  end

  def create
    @post = Post.new (post_params)

    if @post.valid?
      @post.save
      redirect_to @post, success: 'Статья успешно создана'
    else
      render :new, danger: 'Статья не создана'
    end
  end
#=======================================================================================
  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to posts_path, success: 'Статья успешно обновлена'
    else
      render :edit, danger: 'Статья не обновлена'
    end

  end
#=======================================================================================
  def destroy
    if @post.destroy
      redirect_to posts_path, info: 'Статья успешно удалена'
    else 
      render :edit, danger: 'Статья не удалена'
    end
  end
#=======================================================================================

  private

  def set_post
    @post = Post.find(params[:id])
  end
  
  def set_posts
    @posts = Post.all.order(updated_at: :desc)
  end

  def post_params
    params.require(:post).permit(
      :title,
      :summary,
      :body,
      :image
    )
  end
end
