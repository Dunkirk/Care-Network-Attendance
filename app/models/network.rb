class Network < ActiveRecord::Base
	has_many :groups
	has_many :services
end
