require_relative 'bike'

class DockingStation

	attr_accessor :bikes

	def initialize
		@bikes = []
	end

  def empty?
		@bikes.length == 0
	end


	def release_bike
		if @bikes.length == 0
			fail  "No bikes to release"
		else
			@bikes.pop
		end
	end

	def dock(bike)
		if @bikes.length == 20
			fail  "Already at capacity"
		else
			@bikes << bike
			@bike
		end
	end

end
