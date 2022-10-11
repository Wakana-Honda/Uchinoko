class RecordController < ApplicationController
  def new
   @record = Record.new
  end
  
  def create
   @record = Record.new(record_params)
   # @record = current_end_user.id
   @record.save
    redirect_to record_path(@record.id)
 end

 def show
  @record = Record.find(params[:id])
  # @pet = Record.find(params[:record][:name])
  # @food = Food.find(params[:record][:name])
 end

  def index
   # binding.pry
   @records = Record.all
  end

  def edit
   @record = Record.find(params[:id])
  end
  
  def update
   @record = Record.find(params[:id])
   @record.update(record_params)
   redirect_to record_path(@record.id)
  end
  
  def destroy
   @record = Record.find(params[:id])
   @record.destroy
   redirect_to record_index_path
  end
  
  private
  
  def record_params
    params.require(:record).permit(:amount,:memo,:pet_id,:food_id)
    # ,:pet_name,:food_name
  end
  
end
