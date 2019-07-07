class Portfolio < ApplicationRecord
	validates_presence_of :title, :body, :main_image, :thumb_image

	# Class Method to run db queries
	def self.angular							
		where(subtitle: 'Angular')
	end

	# Scope
	scope :ruby_on_rails_portfolio_items, -> { where(subtitle: 'Ruby on Rails') }
end
