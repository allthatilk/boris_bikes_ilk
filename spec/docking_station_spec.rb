require 'docking_station'

describe DockingStation do
it { is_expected.to respond_to :release_bike}

it 'docks a bike' do
  bike = subject.dock
  # expect(bike).to eq 
end

it 'gets a bike' do
  bike = subject.release_bike
  expect(bike).to be_working
end


end
