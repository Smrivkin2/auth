class ApplicationController < ActionController::Base
    before_action :current_user # run this code before every action

    def current_user
        if session["user_id"]
        @current_user = User.find(session["user_id"])
        end
    end
end
