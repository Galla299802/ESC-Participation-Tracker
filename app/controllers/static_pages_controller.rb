class StaticPagesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:home]

    def home
        @events = Event.all
        @home_page = true
    end
end
