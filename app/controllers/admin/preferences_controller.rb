class Admin::PreferencesController < ApplicationController
  def index
    # binding.pry
    @preference = Preference.find_or_create_by(id: 1)
  end
end
