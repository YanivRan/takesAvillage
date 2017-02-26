class ApplicationController < ActionController::Base
  include Clearance::Controller
  protect_from_forgery

  unless Rails.application.config.consider_all_requests_local
	rescue_from ActionController::RoutingError, with: :render_routing_error
  end 
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

  
end