require_relative 'bike'

class DockingStation
  attr_reader :bike, :dock_capacity

  def initialize
    @bike_counter = 1
    @dock_capacity = 1
  end

  def release_bike
    raise "No bikes are avaliable" unless @bike_counter > 0
      @bike_2 = Bike.new
      @bike_counter  =- 1
      return @bike_2
  end

  def dock(outside_bike)
    if @bike_counter >= @dock_capacity
      fail "The dock is full"
    else
      @bike = outside_bike
      @bike_counter =+ 1
      return @bike
    end
  end
end
