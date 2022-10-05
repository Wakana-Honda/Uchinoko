class GenreController < ApplicationController
  def index
   @genre = Genre.new
   @genres = Genre.all
  end
 
 def create
  # binding.pry
   @genre = Genre.new(genre_params)
   @genres = Genre.all
   @genre.save
    redirect_to genre_index_path
 end
 
 def edit
   @genre=Genre.find(params[:id])
 end

def update
   @genre = Genre.find(params[:id])
   @genre.update(genre_params)
   redirect_to genre_index_path(@genre.id)
end

private
  def genre_params
    params.require(:genre).permit(:name)
  end
  
end
