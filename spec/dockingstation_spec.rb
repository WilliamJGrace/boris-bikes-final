require "dockingstation"

describe DockingStation do
  it "responds to 'release_bike'" do
     expect(subject).to respond_to(:release_bike)
     # expect{DockingStation.new.release_bike}.not_to raise_error
  end
  it "releases working bike" do
    bike = Bike.new
    expect(bike).to be_working
  end

  it "responds to 'dock(bike)' with 1 argument" do
    expect(subject).to respond_to(:dock).with(1).argument
    # expect(DockingStation.new).to respond_to.(:dock).with(1).argument
  end

  it "docks released bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq [bike]
    # expect(DockingStation.new).to respond_to(:bike)
  end

  it "raises an error when docking station has no space for a new bike" do
    # bike = Bike.new
    # subject.dock(bike)
    # bike = Bike.new
    docking_station = DockingStation.new
    20.times { docking_station.dock Bike.new}
    expect{docking_station.dock(Bike.new)}.to raise_error "Docking station full"
  end

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      docking_station = DockingStation.new
      docking_station.dock(bike)
      # we want to release the bike we docked
      expect(docking_station.release_bike).to eq bike
    end

    it "raises an error when there are no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end


end
