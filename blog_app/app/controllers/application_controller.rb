class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?

	# def after_sign_in_path_for(resource)
 #    request.env['omniauth.origin'] || stored_location_for(resource) || root_path
 #  end

  protect_from_forgery with: :exception
end
