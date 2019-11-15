class ArtistsController < ApplicationController

  # new code start
  before_action :set_preferences, only: [:index, :new]
  # new code end

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new

    # https://learn.co/tracks/full-stack-web-development-v8/module-13-rails/section-10-routes-and-resources/namespaced-routes-lab
    # Update the songs#new and artists#new actions to check that creating new
    # songs or artists is enabled, and ...

    # deleted code
    # @artist = Artist.new

    # new code start
    if @preferences && !@preferences.allow_create_artists
          # ...redirect to /songs and /artists, respectively,
          # if that preference is disabled.
      redirect_to artists_path
    else
      @artist = Artist.new
    end
    # new code end

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

  # new code start
  def set_preferences
    @preferences = Preference.first
  end
  # new code end

end
