require 'bike'

describe Bike do
  context "#working?" do
    it { is_expected.to respond_to :working? }
  end

  context "#report_broken" do
    it "reports bike as broken" do
      subject.report_broken
      expect(subject).to_not be_working
    end
  end
end