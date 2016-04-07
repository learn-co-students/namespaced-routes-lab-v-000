class Admin::SettingsController < ApplicationController

  def index
  end

  def update

    redirect_to admin_settings_index_path
  end

end