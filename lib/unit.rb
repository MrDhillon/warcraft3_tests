class Unit

attr_accessor :attack_power
attr_reader :health_points

def initialize(health_points,attack_power)
  @health_points = health_points
  @attack_power = attack_power
end

  def attack!(enemy)
    if self.dead?
      return false
    end
    can_attack?(enemy)
    enemy.damage(@attack_power)
  end

  def damage(att_power_specified)
    @health_points -= att_power_specified
  end

  def dead?
    if @health_points > 0
      return false
    end
    true
  end

  def can_attack?(enemy)

    if enemy.health_points > 0
      return true
    end
     false
  end


end