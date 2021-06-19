class FavoritesController < ApplicationController
  def create
    @favorite = Favorite.new(user_id: @current_user.id, food_id: params[:food_id])
    @favorite.save
    @food = Food.find_by(id: @favorite.food_id)
    @favorite_count = Favorite.where(food_id: params[:food_id]).count
  end
  
  def delete
    @favorite = Favorite.find_by(user_id: @current_user.id, food_id: params[:food_id])
    @food = Food.find_by(id: @like.food_id)
    @favorite.destroy
    @favorite_count = Favorite.where(food_id: params[:food_id]).count
  end

end