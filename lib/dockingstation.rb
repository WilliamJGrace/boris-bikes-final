require_relative "bike"

class DockingStation

  DEFAULT_CAPACITY = 20

  attr_reader :bikesstored, :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @capacity = capacity
    @bikesstored = []
  end

  def release_bike
    fail "No bikes available" if empty?
    # fail "No working bikes available" if @bikesstored[-1].working? == false
    @bikesstored.each_with_index do |bike, index|
      if bike.working?
        return @bikesstored.slice!(index)
      end
    end
    fail "No working bikes available" 
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
