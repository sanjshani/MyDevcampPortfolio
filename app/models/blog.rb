class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
	friendly_id :title, use: :slugged

	validates_presence_of :title, :body, :topic_id

	belongs_to :topic

	has_many :comments, dependent: :destroy

	# Scope #1 >>> Not used in any of the actions
	def self.special_blogs
		all
	end
	# Scope #2 >>> Not used in any of the actions
	def self.feature_blogs
		limit(2)
	end

	##Scope to arrange blogs by order_of_creation 
	def self.recent
		order("created_at DESC")
	end
end
