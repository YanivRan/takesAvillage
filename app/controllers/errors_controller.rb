class ErrorsController < ApplicationController
 def render_unprocessable_entity_response(exception)
    render json: exception.record.errors, status: :unprocessable_entity
  end

  def render_not_found_response(exception)
    render json: { error: exception.message }, status: :not_found
  end

  def render_routing_error
  	respond_to do |format|
  	  format.html { render template: 'errors/not_found', status: 404 }
  	  format.json { render json: { error: exception.message }, status: 404  }
      format.all { render nothing: true, status: 404 }
  	end
  end 
end