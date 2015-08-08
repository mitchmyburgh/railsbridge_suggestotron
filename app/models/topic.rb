class Topic < ActiveRecord::Base
	has_many :votes, dependent: :destroy#,:order => "votes.count DESC"

	def self.sorted
		#Topic.all
		Topic.all.sort_by{|topic| topic.votes.count}.reverse
		#Topic.all
	end
end
