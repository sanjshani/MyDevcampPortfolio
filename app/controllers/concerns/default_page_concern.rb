module DefaultPageConcern
	extend ActiveSupport::Concern				#Importing ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title = "MyDevcamp Portfolio | My Portfolio Website"
		@seo_keywords = "Sanjaya Ranaweera"
	end
end