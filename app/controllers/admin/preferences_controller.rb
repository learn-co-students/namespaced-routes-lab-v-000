class Admin::PreferencesController < ApplicationController

    include ApplicationHelper

    def index
        get_preferences
    end

    def edit
        get_preferences
    end

    def update
        get_preferences
    end
end