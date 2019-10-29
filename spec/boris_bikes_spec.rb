require './lib/boris_bikes'

describe DockingStation do
    it 'docking station to release bike' do
        docking_station = DockingStation.new
        expect(docking_station).to respond_to(:release_bike)
    end
end