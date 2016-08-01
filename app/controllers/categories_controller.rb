class CategoriesController < ApplicationController

  def index
    # main page with list of all avail categories. Links to add new category.
    @categories = Category.all.order("name ASC")
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render 'new'
    end
  end

  def show
    @category = Category.find(params[:id])
  end

  private
    def category_params
      params.require(:category).permit(:name)
    end

end
