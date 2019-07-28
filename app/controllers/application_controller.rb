class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception			# New line (Tutorial version had it)!!
	include DeviseWhitelist
	include SetSource
	include CurrentUserConcern
end
