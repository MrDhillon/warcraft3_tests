class Unit

attr_accessor :attack_power
attr_reader :health_points

def initialize(health_points,attack_power)
  @health_points = health_points
  @attack_power = attack_power
end

def attack!(enemy)
    enemy.damage(@attack_power)
  end

  def damage(att_power_specified)
    @health_points -= att_power_specified
  end

end