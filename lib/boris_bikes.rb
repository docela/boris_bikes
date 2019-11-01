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
    @bike = bike
  end
end
