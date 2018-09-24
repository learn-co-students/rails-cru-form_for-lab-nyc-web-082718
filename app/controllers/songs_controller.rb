class SongsController < ApplicationController

  def new
    @song = Song.new
  end

  def create
    @song = Song.create(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to @song
  end

  def show
    @song = Song.find_by(id: params[:id])
  end

  def edit
    @song = Song.find_by(id: params[:id])
  end

  def update
    @song = Song.find_by(id: params[:id])
    @song.update(name: params[:song][:name], artist_id: params[:song][:artist_id], genre_id: params[:song][:genre_id])
    redirect_to @song
  end

  def index
    @songs = Song.all
  end

end
