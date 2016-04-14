require 'docking_station'
require 'bike'

class Van

def collect_broken
  docking_station = DockingStation.new
  docking_station.broken_bikes
end

end