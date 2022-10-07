class FoodController < ApplicationController
  def new
   @food = Food.new
  end
 
 def create
   @food = Food.new(food_params)
   @food.save
    redirect_to food_index_path
 end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def food_params
    params.require(:food).permit(:type_id,:genre_id,:name,:memo)
  end
  
  
  
end
