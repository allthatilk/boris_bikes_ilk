require_relative 'bike'

class DockingStation

attr_reader :capacity, :bikes

  def initialize
    @bikes = []
    @capacity = 20
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
    @bikes.size == @capacity
  end

  def empty?
    @bikes.empty?
  end

end
