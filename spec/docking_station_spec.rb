load 'docking_station.rb'
load 'bike.rb'

  describe DockingStation do
    it { is_expected.to respond_to :release_bike }

  it "adds a new bike" do
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "docks a bike at docking station" do
    bike = subject.release_bike
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

  it "raises error when there are no bikes left and there is a request to release bike" do
    subject.bike_count = 0
    expect {bike = subject.release_bike}.to raise_error("No bikes to release")
  end

  it "raises error when the bike rack is at overcapacity" do
    bike = Bike.new
    expect {subject.dock(bike)}.to raise_error("Already at capacity")
  end



end
