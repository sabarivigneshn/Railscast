class CategoryController < ApplicationController

  before_filter :find_category, only: [:show,:edit,:update,:destroy]

  def index
    @categories = Category.all
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    respond_to do |format|
    if @category.save
      format.html{redirect_to category_path(@category.id), notice: "Category was successfully created."}
      format.json{render :show, status: :ok}
    else
      format.html{render :new}
      format.json{render json: @category.errors}
    end
  end

  def show

  end

  def edit

  end

  def update
    respond_to do |format|
      if @category.update_attributes(category_params)
        format.html{redirect_to category_path(@category.id), notice: "Category was successfully updated."}
        format.json{render :edit, status: :ok}
      else
        format.html{render :edit}
        format.json{render json: @category.errors}
      end
    end
  end

  end

  def destroy
    @category.destroy
    redirect_to category_index_path
  end

  private

  def find_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.permit(:name,:notes)
  end
end
