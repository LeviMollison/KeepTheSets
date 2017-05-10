class PlayerAccessController < ApplicationController
    
    layout 'testing'
    before_action :confirm_logged_in, :except=>[:login, :attempt_login, :logout]
    #copy this to other controllers that you want to protect
  def menu
      # display text and links for now
  end

  def login
      # display a login form
  end
  
  def attempt_login
      if params[:username].present? && params[:password].present?
          found_user = Player.where(:username => params[:username]).first
          if found_user
              authorized_user = found_user.authenticate(params[:password])
          end
      end
      
      if authorized_user
          session[:user_id] = authorized_user.id
          flash[:notice] = "You are now logged in"
          redirect_to(item_set_index_path)
      else
          flash.now[:notice] = "Invalid username/password combination"
          render('login')
      end
  end
  
  def logout
      session[:user_id] = nil
      flash[:notice] = "logged out"
      redirect_to(player_access_login_path)
  end
  

end
