require_relative "bikes"

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = [ ]
  end

  def release_bike
    if @bikes.length == 0
      raise RuntimeError, "No Bikes Detected"
    else
      Bike.new
    end
  end

  def dock(bike)
    if @bikes.length < 20
      @bikes << bike
    else
      raise RuntimeError, "This dock is full"
    end
  end
end
