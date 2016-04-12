require_relative 'bike'

class DockingStation

	attr_accessor :bike

	def initialize
		@bike_count = 1
	end

	def release_bike
		if @bike_count == 0
			fail  "No bikes to release"
		else
			@bike_count -= 1
			Bike.new
		end
	end

	def dock(bike)
		@bike = bike
		@bike_count += 1
	end

end
