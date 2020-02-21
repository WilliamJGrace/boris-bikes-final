require_relative "bike"

class DockingStation
  attr_reader :bikesstored

  def initialize
    @bikesstored = []
  end

  def release_bike
    fail "No bikes available" if @bikesstored.empty?
    @bikesstored.pop
  end

  def dock(bike)
    fail "Docking station full" if @bikesstored.count >= 20
    @bikesstored << bike
  end

end
