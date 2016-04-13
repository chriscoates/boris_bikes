require 'van'

describe Van do
	it 'contains the broken bikes?' do
		bike = double(:bike, :broken? => true)
		scrap_bikes = []
		5.times {
			subject.dock(bike)
			scrap_bikes << bike
		}
		expect(van.picked_up).to eq scrap_bikes
	end
end