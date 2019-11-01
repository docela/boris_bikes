require_relative "bikes"

class DockingStation
  attr_reader :bike

  def release_bike
    if @bike == nil
      raise RuntimeError, "No Bikes Detected"
    else
      Bike.new
    end
  end

  def dock(bike)
    if @bike == nil
      @bike = bike
    else
      raise RuntimeError, "This dock is full"
    end
  end
end
