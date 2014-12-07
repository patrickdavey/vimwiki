Like a multipart `new` method, where objects are created in an extended
process than in one shot.

e.g.

```ruby

class Climber
  attr_accessor :rack, :harness
  
  def initialize
    @rack = Rack.new
  end
end

class Rack
  attr_accessor :number_of_draws
end

class TradRack < Rack
  def has_nuts?
    true
  end
end

class ClimberBuilder
  attr_reader :climber

  def initialize
    @climber = Climber.new
  end

  def traditional
    @climber.rack = TradRack.new
  end

  def beginner
    @climber.harness = "self_locking"
  end
  
  def climber
    #good place to do checks, like, do they have a harness
    @climber
  end
end

# to use

builder = ClimberBuilder.new
builder.traditional
builder.beginner
climber = builder.climber
