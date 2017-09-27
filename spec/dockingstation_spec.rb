require 'DockingStation'

describe DockingStation do

  describe "release_bike" do
    it 'should release bike' do
      expect(subject).to respond_to(:release_bike)
    end
  end

  describe "bike released" do
    bike = DockingStation.new.release_bike
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
  
end
