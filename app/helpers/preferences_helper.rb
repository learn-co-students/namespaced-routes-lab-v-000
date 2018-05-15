module PreferencesHelper

  def set_preferences
    @preferences = Preference.first
  end
end
