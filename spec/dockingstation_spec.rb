require 'DockingStation'

describe DockingStation do

  describe "release_bike" do
    it 'should release bike' do
      expect(subject).to respond_to(:release_bike)
    end
  end

  describe "bike released" do
    docking_station = DockingStation.new
    docking_station.dock(Bike.new)
    bike = docking_station.release_bike
    it 'should release an instance of the bike class' do
      expect(bike.class).to eq Bike
    end

    it 'should also be working' do
      expect(bike.working?).to eq true
    end
  end

  describe "dock" do
    it 'should dock bike at station' do
      expect(subject).to respond_to(:dock).with(1).argument
    end
  end

  describe "when bike has been docked" do
    it 'should return docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end

  describe 'when there are no bikes in the docking station,' do
    it 'release_bike should raise an error' do
      expect{ subject.release_bike }.to raise_error("No bikes!")
    end
  end
end
