class PostsController < ApplicationController
  # before_action :authenticate_user!, except: [:index]
  before_action :set_post, only: %i[show]
  before_action :set_posts, only: %i[index]

#=======================================================================================
  def index
    
  end
 
  def show

  end
# #=======================================================================================
#   def new
#     @post = Post.new

#   end

#   def create
#     @post = Post.new (post_params)

#     if @post.valid?
#       @post.save
#       redirect_to @post, success: "#{t('posts.create.success')}"
#     else
#       flash.now[:danger] = "#{t('posts.create.fault')}"
#       render :new
#     end
#   end
# #=======================================================================================
#   def edit

#   end

#   def update
#     if @post.update(post_params)
#       redirect_to posts_path, success: "#{t('posts.update.success')}"
#     else
#       flash.now[:danger] = "#{t('posts.update.fault')}"
#       render :edit
#     end

#   end
# #=======================================================================================
#   def destroy
#     if @post.destroy
#       redirect_to posts_path, info: "#{t('posts.delete.success')}"
#     else 
#       render :edit, danger: "#{t('posts.delete.fault')}"
#     end
#   end
# #=======================================================================================

  private

  def set_post
    @post = Post.find(params[:id])
  end
  
  def set_posts
    @posts = Post.paginate(page: params[:page], per_page: 5).order(updated_at: :desc)

  end

  def post_params
    params.require(:post).permit(
      :title,
      :summary,
      :body,
      :image,
      :all_tags,
      :id,
      :category_id
    )
  end
end
