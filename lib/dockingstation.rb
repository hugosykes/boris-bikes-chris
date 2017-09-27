class DockingStation

  attr_reader :bike
  def initialize
    @no_of_bikes = 0
  end

  def release_bike
    @no_of_bikes > 0 ? (@no_of_bikes -= 1; return Bike.new) : raise("No bikes!")
  end

  def dock(bike)
    @no_of_bikes == 1 ? raise("Dock is full!") : (@no_of_bikes += 1; @bike = bike)
  end

end
