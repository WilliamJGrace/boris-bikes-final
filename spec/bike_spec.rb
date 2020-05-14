require "bike"

describe Bike do

  let(:bike) { described_class.new }
  it "responds to 'working?'" do
    expect(bike).to respond_to(:working?)
  end

  it "can report a bike broken" do
    bike.report_broken
    expect(bike).to_not be_working




  end

end
