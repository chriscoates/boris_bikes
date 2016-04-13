require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20
attr_reader :bikes, :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end


  def release_bike
    raise 'No bikes available' if empty?
    @bikes.pop
	end

	def dock(bike)
    raise 'Docking station full' if full?
    @bikes << bike
	end

private

def full?
@bikes.count >= DEFAULT_CAPACITY
end

def empty?
@bikes.empty?
end

end

