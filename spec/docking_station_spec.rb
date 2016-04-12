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






end
