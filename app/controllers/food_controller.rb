class FoodController < ApplicationController
  def new
   @food = Food.new
  end
 
 def create
   @food = Food.new(food_params)
   @food.end_user_id = current_end_user.id
   if @food.save
    redirect_to food_index_path
    else
     render:new
   end
 end

  def index
   @foods = Food.all
   @foods = current_end_user.foods
  end

  def show
   # binding.pry
   @food = Food.find(params[:id])
   @type = Type.find(@food.type_id)
   @genre = Genre.find(@food.genre_id)
   # genre = @food.genres
   # type = @food.types
  end

  def edit
   @food = Food.find(params[:id])
  end
  
  def update
   @food = Food.find(params[:id])
   if @food.update(food_params)
    redirect_to food_path(@food.id)
   else
    render:edit
   end
  end
  
  def destroy
   @food = Food.find(params[:id])
   @food.destroy
   redirect_to food_index_path
  end
  
  private
  # ストロングパラメータ
  def food_params
    params.require(:food).permit(:type_id,:genre_id,:name,:memo,:food_image)
  end
  
  
  
end
