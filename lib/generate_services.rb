church_network = 1 # Set to church-wide group number, if not 1
choir_network = 3
# Create seed date/times with the next week of regular services, maybe
# sunday_school and sunday_worship?
sunday = DateTime.new(2007, 7, 8, 14, 0, 0)
wednesday = DateTime.new(2007, 7, 11, 19, 0, 0)
choir1 = DateTime.new(2010, 9, 8, 18, 0, 0)
choir2 = DateTime.new(2010, 9, 5, 12, 30)

# 208 iterations = four years of services
(0..208).each do
	Service.find_or_create_by_service_and_network_id(sunday, church_network)
	Service.find_or_create_by_service_and_network_id(wednesday, church_network)
	sunday += 7
	wednesday += 7
	Service.find_or_create_by_service_and_network_id(choir1, choir_network)
	Service.find_or_create_by_service_and_network_id(choir2, choir_network)
	choir1 += 7
	choir2 += 7
end
