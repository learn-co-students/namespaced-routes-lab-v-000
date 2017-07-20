class Admin::PreferencesController < ApplicationController
  def index
    @preference = Preference.new
  end

end
