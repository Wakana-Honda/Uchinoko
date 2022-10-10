class RecordController < ApplicationController
  def new
   @record = Record.new
  end
  
  def create
   # binding.pry
   @record = Record.new(record_params)
   @record.end_user_id = current_end_user.id
   @record.save
    redirect_to record_index_path
 end

  def index
   @records = Record.all
   @records = current_end_user.records
  end

  def show
  end

  def edit
  end
  
  private
  # ストロングパラメータ
  def record_params
    params.require(:record).permit(:amount,:memo)
    # :pet_id,:food_id,
  end
  
end
