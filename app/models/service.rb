class Service < ActiveRecord::Base
	has_many :attendances
	belongs_to :network

	validates_uniqueness_of :date_and_time, :scope => :network_id
	
	def printable_date
		self.date_and_time.to_date.strftime("%a, %b %d, %Y @ %r")
	end

end
