class CategoriesController < ApplicationController

  def index
    # main page with list of all avail categories. Links to add new category.
  end

  def new
    @category = Category.new
  end

end
