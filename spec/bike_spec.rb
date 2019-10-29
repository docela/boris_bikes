require './lib/boris_bikes'

describe Bike do
    it 'checks if bike is working' do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:working?)
    end
end