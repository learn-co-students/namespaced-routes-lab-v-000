class ArtistsController < ApplicationController
  def index
    p = Preference.find_or_create_by(allow_create_songs: true, allow_create_artists: true)
    @artists = Artist.all.order(name: p.artist_sort_order)
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    p = Preference.first
    if !p.allow_create_artists && !p.nil?
      redirect_to artists_path
    else
      @artist = Artist.new
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
