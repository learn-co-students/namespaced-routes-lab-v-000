class Preference
  @@all = []

  def initialize(input)
    @@all << self
  end

  def self.all
    @@all
  end

  def song_sort_order
    'name desc'
  end

  def self.create(input)
    self.new(input)
  end

  def artist_sort_order
    'name desc'
  end

  def allow_create_songs
    true
  end

  def allow_create_artists
    false
  end
end