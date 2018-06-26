class Admin::PreferencesController < ApplicationController
    def index
        @preferences = Preference.take
    end
end