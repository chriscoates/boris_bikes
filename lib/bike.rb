class Bike

  attr_accessor :docked
  attr_reader :working

  def initialize (working = true)
    @working = working
  end

  def working?
    self.working
  end

  def docked?
    true
  end

  def report_broken
    self.working = false
  end

  private
    attr_writer :working
end