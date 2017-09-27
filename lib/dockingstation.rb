class DockingStation

  attr_reader :bike
  def initialize
    @no_of_bikes = 0
  end

  def release_bike
    @no_of_bikes > 0 ? Bike.new : raise("No bikes!")
    @no_of_bikes -= 1
  end

  def dock(bike)
    @no_of_bikes += 1
    @bike = bike
  end

end
