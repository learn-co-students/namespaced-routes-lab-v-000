class Preference < ActiveRecord::Base
  def self.set_preference
    p = Preference.last
  end
end
