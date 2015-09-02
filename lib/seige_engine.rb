class SeigeEngine

  attr_accessor :health_points, :attack_power

  def initialize(health_points = 400,attack_power = 50)
    @health_points = health_points
    @attack_power = attack_power
  end


end