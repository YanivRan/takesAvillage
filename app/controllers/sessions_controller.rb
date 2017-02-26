class SessionsController < Clearance::SessionsController
  def create 
  	super
  	current_user.update_attribute("status", 1)
  end 
  def destroy 
  	current_user.update_attribute("status", 0)
  	super
  end 
end