class Preference < ActiveRecord::Base

  def self.permit_create_songs?
    !!where(allow_create_songs: true)
  end

  def self.permit_create_artists?
    !!where(allow_create_artists: true)
  end

end
