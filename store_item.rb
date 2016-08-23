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
  def initialize(hash_input)
    @meat = hash_input[:meat]
    @bread = hash_input[:bread]
    @condiment = hash_input[:condiment]
  end

  def meat
    @meat
  end

  def bread
    @bread
  end

  def condiment
    @condiment
  end
end

roast_beef = Sandwich.new({meat: "roast beef", bread: "white", condiment: "au jus"})

puts roast_beef.meat

puts roast_beef.bread

puts roast_beef.condiment