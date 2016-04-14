require 'van'

describe Van do
  let(:bike) { double(:bike, report_broken: false, broken?: false) }
  let(:broken_bike) { double(:broken_bike, report_broken: true, broken?: true) }
  let(:station) { double(:station, broken_bikes: true) }

	it 'collects broken bikes' do
    expect(subject.collect_broken(broken_bike))
	 end
  end
end