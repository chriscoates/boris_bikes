require 'van'
require 'bike'
require 'docking_station'

describe Van do
  let(:bike) { double(:bike, report_broken: false, broken?: false) }
  let(:broken_bike) { double(:broken_bike, report_broken: true, broken?: true) }
  let(:broken_bike1) { double(:broken_bike, report_broken: true, broken?: true) }
  let(:docking_station) { double(:docking_station, broken_bikes: [broken_bike, broken_bike1])}

  it 'loads broken bikes' do
    expect(van.load(docking_station.broken_bikes)).to include docking_station.broken_bikes
  end
# 	it 'collects broken bikes' do
#     expect(subject.collect_broken_bikes).to eq docking_station.broken_bikes
#   end

#   it 'fixes the broken bikes' do

#   end
end