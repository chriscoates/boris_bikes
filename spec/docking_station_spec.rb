load 'docking_station.rb'

describe DockingStation do

	it { is_expected.to respond_to :release_bike }

	it { is_expected.to respond_to(:dock).with(1).argument }

	it { is_expected.to respond_to :bikes }

	it 'docks something' do
		bike = double(:bike)
		expect(subject.dock(bike)).to eq [bike]
	end

	it 'does not release a broken bike' do
		bike = double(:bike)
		bike.report_broken
		subject.dock(bike)
		expect {subject.release_bike}.to raise_error 'Bike is broken'

	end

	it 'returns docked bikes' do
		bike = double(:bike)
		subject.dock(bike)
		expect(subject.bikes).to eq [bike]
	end

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect {subject.release_bike}.to raise_error 'No bikes available'
		end

		describe '#dock' do
			it "raises an error when full" do
				DockingStation::DEFAULT_CAPACITY.times { subject.dock double(:bike) }
				expect { subject.dock double(:bike) }.to raise_error "Docking station full"
			end
		end
		it 'return capacity' do
			expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
		end
		it 'when passed capacity 30 bikes return 30' do
			station1 = DockingStation.new(30)
			expect(station1.capacity).to eq 30
		end
	end
end

