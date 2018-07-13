class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :update, :destroy]
  
  def index
    if artist_id
      set_artist
      @artist.nil? ? (redirect_to artists_path, alert: "Artist not found") : (@songs = @artist.songs)
    else
      @songs = Song.all
    end
  end

  def show
    if artist_id
      set_artist
      @song = @artist.songs.find_by(id: params[:id])
      
      redirect_to artist_songs_path(@artist), alert: "Song not found" if @song.nil?
    else
      set_song
    end
  end

  def new
    redirect_to songs_path if @preferences && !@preferences.allow_create_songs
    @artist = Artist.new
  end

  def create
    @song = Song.new(song_params)
    @song.save ? (redirect_to @song) : (render :new)
  end

  def edit
  end

  def update
    @song.update(song_params)
    @song.save ? (redirect_to @song) : (render :edit)
  end

  def destroy
    @song.destroy
    redirect_to songs_path, alert: 'Song deleted.'
  end

private

  def set_song
    @song = Song.find(params[:id])
  end
  
  def set_artist
    @artist = Artist.find_by(id: artist_id)
  end
  
  def artist_id
    params[:artist_id]
  end

  def song_params
    params.require(:song).permit(:title, :artist_name)
  end
end

