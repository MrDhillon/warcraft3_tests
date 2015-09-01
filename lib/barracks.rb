class Barracks

   attr_reader :gold, :food

  def initialize(gold = 1000,food = 80)
    @gold = gold
    @food = food
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

end
