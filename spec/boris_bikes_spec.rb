require './lib/boris_bikes'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets bike and expects bike to work' do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it 'docks bike' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns an error when there is no bike docked' do
    docking_station = DockingStation.new
    expect {docking_station.release_bike}.to raise_error(RuntimeError)
  end 
end