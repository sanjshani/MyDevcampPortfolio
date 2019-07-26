class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception			# New line (Tutorial version had it)!!
	include DeviseWhitelist

	before_action :set_source

	def set_source
		session[:source] = params[:q]
	end
end
