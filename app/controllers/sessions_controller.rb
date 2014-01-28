class SessionsController < ApplicationController
  def new 
  end 

  def create 
  	user = User.find_by_email(params[:session][:email])
  	@uer=user 
  	if user && user.authenticate(params[:session][:password])
  	   sing_in user
  	   redirect_to user 
  	else
  		flash.now[:error] = 'Invalid email or password'
  	   render 'new'  		
  	end
  end 

  def destroy
  end
  


end
