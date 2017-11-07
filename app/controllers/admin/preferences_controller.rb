class Admin::PreferencesController < ApplicationController

  def index
    if !Preference.all.empty?
      @preference = Preference.first
    else
      @preference = Preference.new
    end
  end


end
