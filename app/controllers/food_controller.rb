class FoodController < ApplicationController
  def new
   @food = Food.new
  end
 
 def create
   @food = Food.new(food_params)
   @food.end_user_id = current_end_user.id
   @food.save
    redirect_to food_index_path(@food.id)
 end

  def index
   @foods = Food.all
   @foods = current_end_user.foods
  end

  def show
   @food = Food.find(params[:id])
   # @genre = @food.genre
   # @type = @food.type
   # binding.pry
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def food_params
    params.require(:food).permit(:type_id,:genre_id,:name,:memo,:food_image)
  end
  
  
  
end
