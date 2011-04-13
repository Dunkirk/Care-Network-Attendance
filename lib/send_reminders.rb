#!script/runner

networks = Network.all.select { |n| !n.groups.empty? }
networks.each do |network|
	service = Service.last(:conditions => "service <= '2011-04-04' and " +
		"network_id = #{network.id}")
	unless service.nil?
		# I don't know why `contacted != true' doesn't work by itself...
		absences = Attendance.all(:conditions => "service_id = #{service.id} and " +
			"status_id > 4 and (contacted = false or contacted is null)")
		groups = Group.all.select { |g| g.children.empty? && g.network_id == network.id }
		groups.each do |group|
			group_absences = absences.select { |a| a.person.groups.include?(group) }
			unless group_absences.empty?
				Notifications.deliver_reminder(group.leader, group_absences)
			end
		end
	end
end
