puts "Please list your favorite foods: "
foods = []
5.times do 
  puts "What food do you like?"
  foods << gets.chomp
end

number = 0

foods.each do |food|
  number += 1
    puts number + "." + " " + food
end

