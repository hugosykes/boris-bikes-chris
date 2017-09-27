require 'Bike'
describe Bike do
  describe 'working?' do
      it 'should test if working' do
        expect(Bike.new).to respond_to(:working?)
      end
  end
end
