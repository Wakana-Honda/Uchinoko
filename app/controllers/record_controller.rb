class RecordController < ApplicationController
  def new
   @record = Record.new
  end
  
  def create
   @record = Record.new(record_params)
   @record.end_user_id = current_end_user.id
   @record.save
    redirect_to record_path(@record.id)
 end

 def show
  # binding.pry
  @record = Record.find(params[:id])
  # @pet = @record.pet_name
  # @food = @record.food_name
 end

  def index
   @records = Record.all
   # @records = current_end_user.records
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def record_params
    params.require(:record).permit(:amount,:memo,:pet_name,:food_name)
    # :pet_id,:food_id,
  end
  
end
