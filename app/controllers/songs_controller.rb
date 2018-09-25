class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def create
    @song= Song.new(permitted_params)
    @song.save
    redirect_to song_path(@song)
  end

    def edit
        @song = Song.find_by(id: params[:id])
    end

    def update
      @song = Song.find_by(id: params[:id])
      @song.update(permitted_params)
      redirect_to song_path(@song)
    end

    private

    def permitted_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
      end
end
