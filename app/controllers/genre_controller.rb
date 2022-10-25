class GenreController < ApplicationController
  def index
   @genre = Genre.new
   @genres = Genre.all
   @genre = current_end_user.genres
  end
 
 def create
  # binding.pry
   @genre = Genre.new(genre_params)
   @genre.end_user_id = current_end_user.id
   @genres = Genre.all
   if @genre.save
    redirect_to genre_index_path
   else
     render:index
   end
 end
 
 def edit
   @genre=Genre.find(params[:id])
 end

def update
   @genre = Genre.find(params[:id])
   @genre.update(genre_params)
   redirect_to genre_index_path(@genre.id)
end

def destroy
  @genre = Genre.find(params[:id])
  @genre.destroy
  redirect_to genre_index_path
end

private
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
