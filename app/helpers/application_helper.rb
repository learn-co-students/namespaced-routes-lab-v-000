module ApplicationHelper

    def get_preferences
        @preferences = Preference.all.first
    end

end
