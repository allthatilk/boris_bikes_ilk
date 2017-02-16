require 'docking_station'

describe DockingStation do
it { is_expected.to respond_to :release_bike}

it 'docks and shows the bike' do
  bike = subject.dock(bike) # This is us taking our bike to the docking station
  expect(subject.bike).to eq bike # .bike is the same as our previous 'show_bike'
  # method but attr_reader uses the variable name instead. So this is showing us
  # our bike docked in the docking station, not someone else's bike.
end

it 'gets a bike' do
  bike = subject.release_bike
  expect(bike).to be_working
end


end
