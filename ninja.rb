require_relative 'human'

class Ninjas < Human

  def initialize
    super
    @health = 175
  end

  def stealth(obj)
    if obj.class.ancestors.include?(Human)
      obj.health -= 20
      @health += 10
      true
    else
      false
    end
  end

    def get_away
      @health -= 15
    end


end
