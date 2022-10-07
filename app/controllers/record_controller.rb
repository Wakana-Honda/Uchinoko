class RecordController < ApplicationController
  def new
   @record = Record.new
  end
  
  def create
   @record = Record.new(record_params)
   @record.save
    redirect_to record_index_path
 end

  def index
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
