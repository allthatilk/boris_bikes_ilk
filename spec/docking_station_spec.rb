require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike}

  it 'docks and shows the bike' do
    bike = subject.dock(bike) # This is us taking our bike to the docking station
    expect(subject.bikes[-1]).to eq bike # .bike is the same as our previous 'show_bike'
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
    expect{21.times { subject.dock(Bike.new)} }.to raise_error("Too many bikes!")
  end

  it 'has a default capacity of 20 bikes' do
    expect(subject.capacity).to eq 20
  end

  it 'releases a bike' do
    bike = subject.dock(Bike.new)
    expect(subject.release_bike).to eq bike
  end

end
