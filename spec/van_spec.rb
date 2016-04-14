require 'van'

describe Van do
  context "#collect_broken" do
	 it 'contains the broken bikes?' do
		#van = double(:van)

    #allow(van).to receive(:collect_broken).and_return(true)
    expect(subject.collect_broken).to be_truthy

	 end
  end
end