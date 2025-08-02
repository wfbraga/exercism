class AssemblyLine
  FLOWLESS_PRODUCTION_RATE_PER_HOUR = 221
  
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    FLOWLESS_PRODUCTION_RATE_PER_HOUR * @speed * success_rate
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).floor
  end

  private
  
  def success_rate
    case @speed
      when 1..4
        return 1
      when 5..8
        return 0.9
      when 9
        return 0.8
      when 10
        return 0.77
    end
  end
end
