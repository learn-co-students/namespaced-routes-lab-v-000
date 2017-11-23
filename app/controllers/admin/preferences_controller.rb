class Admin::PreferencesController < ApplicationController

  def index
    @pref = Preference.first
  end

end
