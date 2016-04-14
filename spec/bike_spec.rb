require 'bike.rb'

describe Bike do
  it { is_expected.to respond_to :working? }

  context "#report_broken" do
    it "reports bike as broken" do
      subject.report_broken
      expect(subject).to be_broken
    end

  end

end