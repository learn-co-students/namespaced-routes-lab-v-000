module SongsHelper
    def sorted_songs(songs)
        sort_order = Preference.new.song_sort_order
        songs.order("title #{sort_order}")
    end
end
