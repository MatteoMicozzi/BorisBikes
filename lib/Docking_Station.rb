require_relative 'bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def dock(bike)
    fail 'The docking station is full!' if @bikes.length >= 20
    @bikes << bike
  end

  def release_bike
    fail 'You do not have any bikes!' if @bikes.empty?
    @bikes.pop
  end
end
