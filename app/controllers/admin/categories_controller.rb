class Admin::CategoriesController < Admin::AdminController

  # , except: [:show]
  before_action :set_category, only: %i[edit update destroy]
  before_action :set_categories, only: %i[index]

#=======================================================================================
  def index
    
  end
 
  # def show
  #   @posts = Post.where(category_id: [@category.subtree_ids]).paginate(page: params[:page], per_page: 5).order(updated_at: :desc)
  # end
#=======================================================================================
  def new
    @category = Category.new
    # @categories = Category.all.order(:name)
  end

  def create
    @category = Category.new (category_params)

    if @category.valid?
      @category.save
      redirect_to admin_categories_path, success: "#{t('admin.categories.create.success')}"
    else
      flash.now[:danger] = "#{t('admin.categories.create.fault')}"
      render :new
    end
  end
#=======================================================================================
  def edit

  end

  def update
    if @category.update(category_params)
      redirect_to admin_categories_path, success: "#{t('admin.categories.update.success')}"
    else
      flash.now[:danger] = "#{t('admin.categories.update.fault')}"
      render :edit
    end

  end
#=======================================================================================
  def destroy
    if @category.destroy
      redirect_to admin_categories_path, info: "#{t('admin.categories.delete.success')}"
    else 
      render :edit, danger: "#{t('admin.categories.delete.fault')}"
    end
  end
#=======================================================================================

  private

  def set_category
    @category = Category.find(params[:id])
  end
  
  def set_categories
    @categories = Category.all.order(updated_at: :desc)
 
  end

  def category_params
    params.require(:category).permit(:name, :id, :parent_id)
  end
end
