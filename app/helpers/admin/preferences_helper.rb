module Admin::PreferencesHelper
  def order_artist
    order = self.last.artist_sort_order
    Artist.order(name: order)
  end

  def order_song
    order = self.last.song_sort_order
    Song.order(name: order)
  end
end
