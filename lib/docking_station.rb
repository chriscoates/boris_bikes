require_relative 'bike'
require_relative 'van'

class DockingStation
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    raise 'Bike is broken' if broken?
    @bikes.pop
  end

  def dock(bike)
    raise 'Docking station full' if full?
    @bikes << bike
  end

  def broken_bikes
    @bikes.select do |bike|
      if bike::broken?
        bike
      end
    end
  end

  private

  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

  def broken?
    @bikes.last::broken?
  end
  
end

