class GenresController < ApplicationController

  def index
    @genres = Genre.all
  end

  def new
    @genre = Genre.new
  end

  def show
    @genre = Genre.find_by(id: params[:id])
  end

  def create
    @genre= Genre.new(permitted_params)
    @genre.save
    redirect_to genre_path(@genre)
  end

    def edit
        @genre = Genre.find_by(id: params[:id])
    end

    def update
      @genre = Genre.find_by(id: params[:id])
      @genre.update(permitted_params)
      redirect_to genre_path(@genre)
    end

  private

  def permitted_params
      params.require(:genre).permit(:name)
    end

end
