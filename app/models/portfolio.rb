class Portfolio < ApplicationRecord
	has_many :technologies
	accepts_nested_attributes_for :technologies, 
	                               reject_if: lambda {|attrs| attrs['name'].blank?}

	validates_presence_of :title, :body

	#Mapping with portfolio_uploader   T171
	mount_uploader :thumb_image, PortfolioUploader
	mount_uploader :main_image, PortfolioUploader


	# Class Method to run db queries
	def self.angular							
		where(subtitle: 'Angular')
	end

	#Scope for portfolio_item "position" for index view
	def self.by_position
		order("position ASC")
	end

	# Scope Method to run db queries << had not yet created a route and a method to use this in browser!!
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end