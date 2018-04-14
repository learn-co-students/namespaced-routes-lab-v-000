module Admin::PreferencesHelper
  def order_artist
    order = self.last.artist_sort_order
    Artist.order(name: order)
  end
end
