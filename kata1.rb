input = File.open("weather.dat") 
array = input.each { |line| p line.split }
puts array