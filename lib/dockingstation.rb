require_relative "bike"

class DockingStation
  attr_reader :bikesstored

  def initialize
    @bikesstored = []
  end

  def release_bike
    fail "No bikes available" if empty?
    @bikesstored.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikesstored << bike
  end

  private

  def full?
    @bikesstored.count >= 20
  end

  def empty?
    @bikesstored.empty?
  end

end
