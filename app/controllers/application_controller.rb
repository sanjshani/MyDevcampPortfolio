class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception			# New line (Tutorial version had it)!!

	before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
		devise_parameter_sanitizer.permit(:account_update, keys:[:name])
	end
end
