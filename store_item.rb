meatball = {bread: "italian",
            meat: "meatballs",
            condiment: "marinara"}

ham = {bread: "wheat",
      meat: "ham", 
      condiment: "mustard"}

blt = {:bread => "rye",
	   :meat => "bacon",
	   :condiment => "mayo"}

class Sandwich
  attr_reader :meat, :bread, :condiment
  def initialize(hash_input)
    @meat = hash_input[:meat]
    @bread = hash_input[:bread]
    @condiment = hash_input[:condiment]
  end
end

class Perishables < Sandwich
  def initialize(hash_input)
    super
    @shelflife = hash_input[:shelflife]
  end
end
roast_beef = Sandwich.new({meat: "roast beef", bread: "white", condiment: "au jus"})

egg_salad = Perishables.new({meat: "eggs", bread: "sourdough", condiment: "mayo", shelflife: 3})

puts roast_beef.meat

puts roast_beef.bread

puts roast_beef.condiment

p egg_salad