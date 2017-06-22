module PreferencesHelper

  def preference_form(preference)
    text_field_tag "create artists?", @preference.allow_create_artists
    submit_tag "Create Preference"
  end

end
