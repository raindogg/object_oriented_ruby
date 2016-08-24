class Vehicle 
  def initialize(hash)
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Bike < Vehicle
  attr_accessor :speed, :type, :weight
  def initialize(hash)
    super
    @speed = hash[:speed]
    @type = hash[:type]
    @weight = hash[:weight]
  end
  
  def ring_bell
    puts "Ring ring!"
  end
end

class Car < Vehicle
  
  attr_accessor :make, :model, :fuel
  def initialize(hash)
    super
    @make = hash[:make]
    @model = hash[:model]
    @fuel = hash[:fuel]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

huffy = Bike.new({speed: 60,type: "fast",weight: 4000})
p huffy


herbie = Car.new({make: "toyota", model: "camry", fuel: 5})

p herbie