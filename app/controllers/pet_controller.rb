class PetController < ApplicationController
  def new
   @pet = Pet.new
  end
 
 def create
   @pet = Pet.new(pet_params)
   @pet.end_user_id = current_end_user.id
   if @pet.save
    redirect_to pet_index_path
   else
    render:new
   end
 end

  def index
   @pets = Pet.all
   @pets = current_end_user.pets

  end

  def edit
   @pet = Pet.find(params[:id])
  end
  
  def update
   @pet = Pet.find(params[:id])
   @pet.update(pet_params)
   redirect_to pet_index_path(@pet.id)
  end
  
  def destroy
   @pet = Pet.find(params[:id])
   @pet.destroy
   redirect_to pet_index_path
  end
  
  private
  # ストロングパラメータ
  def pet_params
    params.require(:pet).permit(:name,:pet_image,:age,:birthday,:gender,:memo)
  end
  
end
