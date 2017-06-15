class ArtistsController < ApplicationController
  def index
    preference = Preference.first_or_create(artist_sort_order: "ASC")
    preference.artist_sort_order = "ASC" if preference.artist_sort_order.blank?
    @artists = Artist.all.order(name: preference.artist_sort_order)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    preference = Preference.first

    if preference && preference.allow_create_artists
      @artist = Artist.new
    else
      redirect_to artists_path, alert: "Your current settings do not allow new artists to be created"
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
end
