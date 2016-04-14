require_relative 'docking_station'
require_relative 'bike'

class Van
	attr_reader :stored_bikes
	
  def collect_broken_bikes(docking_station)
    @stored_bikes = docking_station.broken_bikes
  end

end