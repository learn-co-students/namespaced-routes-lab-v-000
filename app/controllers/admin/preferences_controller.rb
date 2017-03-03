class Admin::PreferencesController < ApplicationController
  def index
    @prefs = Preference.all
  end
end
