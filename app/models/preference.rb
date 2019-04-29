class Preference < ActiveRecord::Base

  def create
    @p = self.all[0].allow_create_artists
  end

end
