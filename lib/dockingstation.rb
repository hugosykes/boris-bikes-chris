class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    @bikes.pop if !empty?
  end

  def dock(bike)
    @bikes.push(bike) if !full?
  end

  private

  def full?
    raise("Dock is full!") if @bikes.count == 20
  end

  def empty?
    raise("No bikes!") if @bikes.empty?
  end

end
