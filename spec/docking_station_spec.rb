load 'docking_station.rb'

describe DockingStation do

	let(:bike) { double(:bike, report_broken: false, broken?: false) }
	let(:broken_bike) { double(:broken_bike, report_broken: true, broken?: true) }

	it 'sends broken bikes to broken_bikes' do
		# bike = double(:bike, :broken? => true)
		subject.dock(broken_bike)
		expect(subject.broken_bikes).to eq [broken_bike]
	end

	describe '#release_bike' do
		it 'raises an error when there are no bikes available' do
			expect {subject.release_bike}.to raise_error 'No bikes available'
		end

		it 'does not release a broken bike' do
			# bike = double(:bike, :broken? => true)
			subject.dock(broken_bike)
			expect {subject.release_bike}.to raise_error 'Bike is broken'
		end
	end

	describe '#dock' do

		it 'docks something' do
			# bike = double(:bike, :broken? => false)
			expect(subject.dock(bike)).to eq [bike]
		end

		it 'returns docked bikes' do
			# bike = double(:bike, :broken? => false)
			subject.dock(bike)
			expect(subject.bikes).to eq [bike]
		end

		it "raises an error when full" do
			DockingStation::DEFAULT_CAPACITY.times { subject.dock(bike) }
			expect { subject.dock(bike) }.to raise_error "Docking station full"
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

