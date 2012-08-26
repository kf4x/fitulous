class SessionsController < ApplicationController
  def new
  end
	
	def create
		user = login(params[:username], params[:password], params[:remember_me])
	  if user
	    redirect_back_or_to plans_path, :notice => "Logged in!"
	  else
	    render :new, :notice => "Email or password is invaild"
	  end
	end

	def destroy
    	cookies.delete(:auth_token)
    	reset_session
    	@current_user = nil
    	redirect_to("http://google.com")
	end

end
