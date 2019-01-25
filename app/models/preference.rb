class Preference < ActiveRecord::Base
  def current_preference
    Preference.last
  end 

end
