class Project < ActiveRecord::Base
	extend FriendlyId
	friendly_id :title, use: :slugged

	# Change friendly_id url when it updates 
	def should_generate_new_friendly_id?
	  title_changed?
	end
end
