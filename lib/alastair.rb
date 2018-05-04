class Alastair
  attr_reader :name, :health

def initialize(name = "AI")
  @name = name
  @health = 20
end

def reduce_health
  @health -= rand(5..20)
end
end
