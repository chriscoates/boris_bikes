require_relative 'bike'

class DockingStation

	attr_accessor :bikes
	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	def release_bike
		if self.empty?
			fail  "No bikes to release"
		else
			@bikes.pop
		end
	end

	def dock(bike)
		if self.full?
			fail "Already at capacity"
		else
			@bikes << bike
			@bike
		end
	end


	def empty?
		@bikes.length == 0
	end

	def full?
		@bikes.length == DEFAULT_CAPACITY
	end

end
