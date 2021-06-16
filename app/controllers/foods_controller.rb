class FoodsController < ApplicationController
  def index
  @foods = Food.all
  end

  def new
  @food = Food.new
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
  @food = Food.find(params[:id])
  @comment = Comment.new
  @comments = @food.comments.includes(:user)
  end

  def edit
    @food = Food.find(params[:id])
    unless @food.user_id == current_user.id
      redirect_to action: :index
    end
  end

  def update
    @food = Food.find(params[:id])
    if @food.update(food_params)
      redirect_to food_path
    else
      render :edit
    end
  end

  def destroy
    @food = Food.find(params[:id])
    if @food.destroy
      redirect_to root_path
    end
  end


  private
  def food_params
    params.require(:food).permit(:title, :catch_copy, :menu, :image).merge(user_id: current_user.id)
  end
end
