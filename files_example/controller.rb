require './sandwiches.rb'
require './perishables.rb'

blt = Storefront::Sandwich.new({:bread => "rye",
                                :meat => "bacon",
                                :condiment => "mayo"})

ham = Storefront::Sandwich.new({bread: "wheat",
                                meat: "ham", 
                                condiment: "mustard"})

meatball = Storefront::Sandwich.new({bread: "italian",
                                     meat: "meatballs",
                                     condiment: "marinara"})

roast_beef = Storefront::Sandwich.new({meat: "roast beef", bread: "white", condiment: "au jus"})

egg_salad = Storefront::Perishables.new({meat: "eggs", bread: "sourdough", condiment: "mayo", shelflife: 3})

puts roast_beef.meat

puts roast_beef.bread

puts roast_beef.condiment

p egg_salad