class Preference < ActiveRecord::Base
  # After initialization, set default values
  after_initialize :set_default_values

  def set_default_values
    # Only set if time_zone IS NOT set
    self.song_sort_order ||= 'ASC'
    self.artist_sort_order ||= 'ASC'
    self.allow_create_songs ||= false
    self.allow_create_artists ||= false
  end
end
