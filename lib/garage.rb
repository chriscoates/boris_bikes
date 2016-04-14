require_relative 'docking_station'
require_relative 'bike'
require_relative 'van'

class Garage
	def store_bikes(van)
		@stored_bikes = van.store_bikes
	end

	def fix_bikes
		return_fixed_bikes = @stored_bikes.each { |bike|
			bike.fix_bike
		}
		@store_bikes -= return_fixed_bikes
	end

end