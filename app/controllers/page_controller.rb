class PageController < ApplicationController
   
    def home
        if visitor_signed_in?
            redirect_to paperposts_path
        else
            redirect_to new_visitor_session_path
        end
    end
    

end