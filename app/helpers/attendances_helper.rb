module AttendancesHelper

	# Might want to make this filter on a new field called "excused"
	def colorize(status)
		"warning" if status > 5
	end

end
