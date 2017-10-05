require_relative 'human'

class Samurais < Human
  @@count = 0

  def initialize
    super
    @health = 200
    @@count += 1
  end

  def death_blow(obj)
    if obj.class.ancestors.include?(Human)
      obj.health = 0
      @health += 10
      true
    else
      false
    end
  end

    def meditate
      @health = 200
    end

  def how_many
    self.count
    @@count
  end

end

s1 = Samurais.new
s2 = Samurais.new
puts s1.death_blow(s2)
