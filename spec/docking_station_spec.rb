load 'docking_station.rb'

describe DockingStation do

  let(:bike) {spy :bike}
  subject(:station) { described_class.new }
  let (:working_bike){ double :bike, working?: true, dock: nil }
    let(:broken_bike){ double :bike, working?: false, dock: nil }
  context 'dock' do

    it "lets bike know it has been docked" do
      station.dock(bike)
      expect(bike).to have_received(:dock)
    end

    it "raises an error when full" do
      DockingStation::DEFAULT_CAPACITY.times { station.dock(bike) }
      expect { station.dock(bike) }.to raise_error "Docking station full"
    end

    it 'returns capacity' do
      expect(station.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it 'when passed capacity 30 bikes return 30' do
      station1 = DockingStation.new(30)
      expect(station1.capacity).to eq 30
    end

  end


  context 'with a working bike' do
    it "can release a working bike" do
      station.dock(working_bike)
      station.dock(broken_bike)
      expect(station.release_bike).to be_working
    end
  end

end

