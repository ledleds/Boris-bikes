require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike_counter = 1
  end

  def release_bike
    fail "No bikes are avaliable" unless @bike_counter > 0
      @bike = Bike.new
      @bike_counter  =- 1
      return @bike
  end

  def dock(outside_bike)
    @bike = outside_bike
  end

end
