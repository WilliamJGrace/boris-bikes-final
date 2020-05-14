require_relative "bike"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikesstored, :capacity

  def initialize
    @capacity = DEFAULT_CAPACITY
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
    @bikesstored.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikesstored.empty?
  end

end
