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
    bike1 = subject.release_bike
    expect {bike2 = subject.release_bike}.to raise_error("No bikes to release")
  end


  it "raises error when the bike rack is at overcapacity" do
    expect {subject.dock(bike)}.to raise_error("Already at capacity") if @bike_count == 1
  end



end
