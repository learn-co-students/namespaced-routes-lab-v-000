class Admin::PreferencesController < ApplicationController

  def index
    @preferences = Preference.new

  end

end
