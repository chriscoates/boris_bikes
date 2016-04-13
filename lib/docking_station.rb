require_relative 'bike'

class DockingStation

	attr_accessor :bikes
	DEFAULT_CAPACITY = 20

	def initialize
		@bikes = []
	end

	def release_bike
		if empty?
			fail  "No bikes to release"
		else
			@bikes.pop
		end
	end

	def dock(bike)
		if full?
			fail "Already at capacity"
		else
			@bikes << bike
		end
	end

private

	def empty?
		@bikes.length == 0
	end

	def full?
		@bikes.length == DEFAULT_CAPACITY
	end

end
