class Preference < ActiveRecord::Base

def allow_songs?
  if self.allow_create_songs == true
    return true
  else
    return false
  end
end

end
