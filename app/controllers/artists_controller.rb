class ArtistsController < ApplicationController

  def index
    set_preference
    if @preference.artist_sort_order == "ASC"
      @artists = Artist.all.sort_by { |artist| artist[:name] }
    elsif @preference.artist_sort_order == "DESC"
      @artists = Artist.all.sort_by { |artist| artist[:name] }.reverse
    else
      @artists = Artist.all
    end
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    set_preference
    if @preference.allow_create_artists == true
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

  def set_preference
    @preference = Preference.first_or_create
  end

  def artist_params
    params.require(:artist).permit(:name)
  end

end
