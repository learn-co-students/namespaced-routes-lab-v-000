class ArtistsController < ApplicationController
  before_action :preferences, only: [:index, :new]
  def index
    if @preferences.try(:artist_sort_order) == 'ASC'
      @artists = Artist.sort_asc
    elsif @preferences.try(:artist_sort_order) == 'DESC'
      @artists = Artist.sort_asc
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    if @preferences.try(:allow_create_artists)
      @artist = Artist.new
    else
      redirect_to artists_path
    end
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])

    @artist.update(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :edit
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    flash[:notice] = "Artist deleted."
    redirect_to artists_path
  end

  private

  def artist_params
    params.require(:artist).permit(:name)
  end

  def preferences
    preferences ||= Preference.first_or_create({
      song_sort_order: "ASC",
      artist_sort_order: "ASC",
      allow_create_artists: true,
      allow_create_songs: true
    })
  end
end
