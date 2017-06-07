class Preference < ActiveRecord::Base

    def self.default
        if preferences ||= self.first
            preferences
        else
            preferences = self.create unless preferences
        end
    end

end
