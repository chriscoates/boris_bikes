require 'garage'
require 'van'
require 'bike'


describe Garage do

    it 'collects the bikes' do
      to_be_fix = van::collect_broken
        b = double(:bike, :broken? => false)
    end
  end
end