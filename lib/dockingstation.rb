class DockingStation

  attr_reader :bikes
  def initialize
    @bikes = []
  end

  def release_bike
    @bikes.empty? ? raise("No bikes!") : @bikes.pop
  end

  def dock(bike)
    @bikes.length == 20 ? raise("Dock is full!") : @bikes.push(bike)
  end

end
