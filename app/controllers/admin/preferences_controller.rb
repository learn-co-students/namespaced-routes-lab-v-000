class Admin::PreferencesController < ApplicationController
  def index
  end

  def show
  end

  def new
    @admin_preference = Preference.new()
  end

  def edit
  end
end
