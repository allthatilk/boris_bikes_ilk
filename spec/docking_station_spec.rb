require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it 'docks and shows the bike' do
    bike = subject.dock(bike) # This is us taking our bike to the docking station
    expect(subject.bike).to eq bike # .bike is the same as our previous 'show_bike'
    # method but attr_reader uses the variable name instead. So this is showing us
    # our bike docked in the docking station, not someone else's bike.
  end

  it 'shows if bike is working' do
    bike = Bike.new
    expect(bike).to be_working
  end

  it 'raises error when none available' do
    expect{subject.release_bike}.to raise_error("No bikes!")
  end

  it 'raises error if at capacity' do
    bike = Bike.new
    subject.dock(bike)
    bike2 = Bike.new
    expect{subject.dock(bike2)}.to raise_error("Too many bikes!")
  end

end
