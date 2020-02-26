class Admins::GenresController < ApplicationController
  def index
  	@genre = Genre.new
  	@genres = Genre.all
  end

  def create
  	genre = Genre.new(genre_params)
  	genre.save
  	redirect_to admins_genres_path
  end

  def edit
  end

  private
  def genre_params
  	params.require(:genre).permit(:genre_name, :display_status)
  end
end
