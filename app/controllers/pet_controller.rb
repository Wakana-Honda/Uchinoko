class PetController < ApplicationController
  def new
   @pet = Pet.new
  end
 
 def create
   @pet = Pet.new(pet_params)
   @pet.save
    redirect_to pet_index_path
 end

  def index
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def pet_params
    params.require(:pet).permit(:name,:pet_image,:age,:birthday,:gender,:memo)
  end
  
end
