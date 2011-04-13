class Service < ActiveRecord::Base
	has_many :attendances
	#belongs_to :description
	belongs_to :network

	#validates_uniqueness_of :service, :scope => :network_id
end
