load 'docking_station.rb'


  describe DockingStation do
    it { is_expected.to respond_to :release_bike }

  it "adds a new bike" do
    bike = subject.release_bike
    expect(bike).to be_working

  end

end
