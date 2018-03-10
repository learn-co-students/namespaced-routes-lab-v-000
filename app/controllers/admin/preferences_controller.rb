class Admin::PreferencesController < ApplicationController

  def index
    @pref = Preference.all
  end

end
