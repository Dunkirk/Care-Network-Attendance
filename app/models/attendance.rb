class Attendance < ActiveRecord::Base
  belongs_to :person
  belongs_to :service
	has_one :network, :through => :service
  belongs_to :status
  validates_uniqueness_of :person_id, :scope => :service_id

	# I _want_ the NULLs in there...
	#before_save :default_status
	#def default_status
	#	self.status_id = 1 unless self.status_id
	#end

end
