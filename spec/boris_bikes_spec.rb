require './lib/boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets bike and expects bike to work' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'docks bike' do
    bike = Bike.new
    docking_station = DockingStation.new
    docking_station.dock(bike)
    expect(docking_station.bikes).to eq [bike]
  end

  it 'returns an error when there is no bike docked' do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error(RuntimeError)
  end 

  it 'returns an error when docking station capacity full' do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock(bike)
    bike2 = Bike.new
    expect { 21.times { docking_station.dock Bike.new} }.to raise_error(RuntimeError)
  end
end