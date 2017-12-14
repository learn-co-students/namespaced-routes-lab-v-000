module Users
  module Preference
    extend ActiveSupport::Concern

    def allow_create_artist?
      ::Preference.first.allow_create_artists
    end

    def allow_create_songs?
      ::Preference.first.allow_create_songs
    end

    def sort_songs(songs)
      if ::Preference.first && ::Preference.first.song_sort_order == "ASC"
        songs.sort_by {|song| song.title }
      elsif ::Preference.first && ::Preference.first.song_sort_order == "DESC"
        songs.sort_by {|song| song.title }.reverse
      else
        songs
      end
    end

    def sort_artists(artists)
      if ::Preference.first && ::Preference.first.artist_sort_order == "ASC"
        artists.sort_by {|artist| artist.name }
      elsif ::Preference.first && ::Preference.first.artist_sort_order == "DESC"
        artists.sort_by {|artist| artist.name }.reverse
      else
        artists
      end
    end
  end

end