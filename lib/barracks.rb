class Barracks

   attr_accessor :gold, :food, :health_points, :lumber

  def initialize(gold = 1000,food = 80, health_points = 500, lumber = 500)
    @gold = gold
    @food = food
    @health_points = health_points
    @lumber = lumber
  end

# def gold
#   @gold
# end

# def name=(str)
#   @name = str
# end

  def can_train_footman?
    case
    when food < 2
      return false
    when gold <135
      return false
    end
    true
  end

  def can_train_peasant?
    case
    when food < 5
      return false
    when gold < 90
      return false
    end
    true
  end

  def train_footman
    if can_train_footman?
      @gold -= 135
      @food -= 2
      Footman.new
    end
  end

  def train_peasant
    if can_train_peasant?
      @gold -= 90
      @food -= 5
      Peasant.new
    end
  end

  def create_engine
    if can_create_engine?
      @gold -= 200
      @lumber -= 60
      @food -= 3
    end
  end

  def can_create_engine?
    case
    when @gold <200
      return false
    when @lumber <60
      return false
    when @food <3
      return false
    end
    true
  end

  def damage(att_power_specified)
    @health_points = @health_points - (att_power_specified)/2
  end


end
