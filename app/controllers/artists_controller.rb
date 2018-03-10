class ArtistsController < ApplicationController
  def index
    preference = Preference.first_or_create(artist_sort_order: "DESC")
    preference.update(artist_sort_order: "DESC") if preference.artist_sort_order.blank?
    @artists = Artist.order(name: preference.artist_sort_order)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    preference = Preference.last
    if preference.allow_create_artists
      @artist = Artist.new
    else
      flash[:notice] = "Acess denied."
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
end
