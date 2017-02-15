require_relative 'bike'

class DockingStation
  attr_reader :bike

  def initialize
    @bike = Bike.new
  end

  def release_bike
    Bike.new
  end

  def dock(outside_bike)
    @bike = outside_bike
  end
end
