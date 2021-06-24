class CategoriesController < ApplicationController

  before_action :set_category, only: %i[show edit update destroy]
  before_action :set_categories, only: %i[index]

#=======================================================================================
  def index
    
  end
 
  def show

  end
#=======================================================================================
  def new
    @category = Category.new

  end

  def create
    @category = Category.new (category_params)

    if @category.valid?
      @category.save
      redirect_to categories_path, success: "#{t('categories.create.success')}"
    else
      flash.now[:danger] = "#{t('categories.create.fault')}"
      render :new
    end
  end
#=======================================================================================
  def edit

  end

  def update
    if @category.update(category_params)
      redirect_to categories_path, success: "#{t('categories.update.success')}"
    else
      flash.now[:danger] = "#{t('categories.update.fault')}"
      render :edit
    end

  end
#=======================================================================================
  def destroy
    if @category.destroy
      redirect_to categories_path, info: "#{t('categories.delete.success')}"
    else 
      render :edit, danger: "#{t('categories.delete.fault')}"
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
