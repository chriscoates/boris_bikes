require_relative 'bike'
require_relative 'van'
require_relative 'dock_module'

class DockingStation
include Dock
  DEFAULT_CAPACITY = 20
  attr_reader :bikes, :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    raise 'No bikes available' if empty?
    @bikes.select {|bike| bike.working?}.pop
  end

  # def dock(bike)
  #   bike.dock
  #   raise 'Docking station full' if full?
  #   @bikes << bike
  # end

  private



  def full?
    @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end



end

