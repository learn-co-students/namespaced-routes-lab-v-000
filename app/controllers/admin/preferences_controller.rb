class Admin::PreferencesController < ApplicationController
  def index
    @preferences = Preference.first
  end
end
