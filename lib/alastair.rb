class Alastair
  attr_reader :name, :health

def initialize(name)
  @name = name
  @health = 100
end

def reduce_health
  @health -= 10
end
end
