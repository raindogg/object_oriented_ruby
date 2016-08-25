puts "Please list your favorite foods: "
foods = []
5.times do 
  puts "What food do you like?"
  foods << "I love " + gets.chomp
end

puts foods 

