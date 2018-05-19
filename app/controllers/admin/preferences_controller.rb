class Admin::PreferencesController < ApplicationController
  def index
    if Preference.all.empty?
      Preference.create
    end

    @preferences = Preference.last
  end

  def update
    p = Preference.last

    if params[:artist_sort_order]
      p.artist_sort_order = params[:artist_sort_order] 
    end

    if params[:song_sort_order]
      p.song_sort_order = params[:song_sort_order] 
    end

    if params[:allow_create_artists]
      p.allow_create_artists = true
    else
      p.allow_create_artists = false
    end

    if params[:allow_create_songs]
      p.allow_create_songs = true
    else
      p.allow_create_songs = false
    end

    p.save

    redirect_to '/admin/preferences'
  end

end
