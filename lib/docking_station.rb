require_relative 'bike'

class DockingStation
CAPACITY = 20
attr_reader :bikes, :capacity

  def initialize(capacity = CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def dock(bike)
    raise 'Too many bikes!' if full?
    @bikes << bike
    @bikes[-1]
  end

  def release_bike
    raise 'No bikes!' if empty?
    @bikes[0]
  end

  private

  def full?
    @bikes.size == CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
