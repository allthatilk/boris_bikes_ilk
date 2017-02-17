require_relative 'bike'

class DockingStation

attr_reader :bike

  def initialize
    @amount_of_bikes = 0
    @capacity = 1
  end

  def dock(bike)
    raise 'Too many bikes!' if @amount_of_bikes == @capacity
    @bike = bike
    @amount_of_bikes +=1
    @bike
  end

  # def show_bike
  #   @bike
  # end

  def release_bike
    raise 'No bikes!' if @amount_of_bikes < 1
    @bike
  end

end
