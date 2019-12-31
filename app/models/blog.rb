class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged

	validates_presence_of :title, :body

	belongs_to :topic

	# Scope #1
	def self.special_blogs
		all
	end
	# Scope #2
	def self.feature_blogs
		limit(2)
	end
end
