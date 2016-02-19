class Admin::AccessController < ApplicationController

  def index
    @preference = Preference.get_or_create
  end

  def update
    current_preference.update(preference_params)
    redirect_to '/admin/access'
  end
end
