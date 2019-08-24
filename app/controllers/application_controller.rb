class ApplicationController < ActionController::Base
before_action :set_current_user
######################################################################
#    add_flash_types :success, :info, :warning, :danger
#    protect_from_forgery with :exception

######################################################################      
    def set_current_user
        @current_user = User.find_by(id:session[:user_id])
    end
    
    def authenticate_user
        if @current_user == nil
           flash[:notice] = "ログインが必要です"
           redirect_to("/login")
        end
    end
    
    def forbid_login_user
        if @current_user
           flash[:notice] = "すでにログインしています"
           #flash.now[:alert] = "すでにログインしています"
           #redirect_to("/posts/index")
           #redirect_to :back
           #redirect_back(fallback_location: 'top')
           redirect_to("/home/top")

        end
    end
      
      
end





