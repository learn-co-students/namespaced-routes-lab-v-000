module SongsHelper
  def sort_songs(collection)
    if Preference.songs_order == "ASC"
      collection.sort_by{|s| s.title}
    else
      collection.sort_by{|s| s.title}.reverse
    end
  end
end
