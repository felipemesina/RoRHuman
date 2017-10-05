require_relative 'human'
class Wizards < Human

  def initialize
    super
    @health = 50
    @intelligence = 25
  end

  def heal
    if @health < 50
      @health += 10
      self
    end

    def fireball(obj)
      if obj.class.ancestors.include?(Human)
        obj.health -= 20
        true
      else
        false
      end
    end

end
