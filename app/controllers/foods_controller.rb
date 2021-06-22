class FoodsController < ApplicationController
  before_action :authenticate_user!, except: %i[show index]
  def index
    @foods = Food.all.order(created_at: :desc)
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
    redirect_to action: :index unless @food.user_id == current_user.id
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
    redirect_to root_path if @food.destroy
  end

  private

  def food_params
    params.require(:food).permit(:title, :catch_copy, :menu, :image).merge(user_id: current_user.id)
  end
end
