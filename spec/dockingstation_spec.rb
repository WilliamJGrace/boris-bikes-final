require "dockingstation"

describe DockingStation do
  let(:bike) { double :bike}
  let(:docking_station) { described_class.new }


  it "has a default capacity" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end


  describe "#dock" do
    it "responds to 'dock(bike)' with 1 argument" do
      expect(docking_station).to respond_to(:dock).with(1).argument
      # expect(DockingStation.new).to respond_to.(:dock).with(1).argument
    end

    it "can dock a bike" do
      docking_station.dock(bike)
      expect(docking_station.bikesstored).to_not be_empty
    end


    it "raises an error when docking station has no space for a new bike" do
      
      DockingStation::DEFAULT_CAPACITY.times { docking_station.dock bike}
      expect{docking_station.dock(bike)}.to raise_error "Docking station full"
    end


  end


  describe '#release_bike' do
    it "responds to 'release_bike'" do
    expect(subject).to respond_to(:release_bike)
    # expect{DockingStation.new.release_bike}.not_to raise_error
    end
    it 'releases a bike' do
      docking_station.dock(bike)
      # we want to release the bike we docked
      expect(docking_station.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
    
  end
end
