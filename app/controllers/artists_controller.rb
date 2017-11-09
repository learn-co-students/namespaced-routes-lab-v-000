class ArtistsController < ApplicationController
  def index
    @artists = Artist.all.order("name #{artist_order}")
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    if artist_create_access?
      @artist = Artist.new
    else
      flash[:alert] = "You do not have permission to create a new artist."
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

    def artist_order
      Preference.last.artist_sort_order
    end

    def artist_create_access?
      Preference.last.allow_create_artists == true
    end
end
