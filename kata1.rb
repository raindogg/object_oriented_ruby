input = File.open("weather.dat") 
array = []
input.each { |line| array << line.split }
p array
puts "********************************"
smaller = []
array.each do |line|
  smaller << line.slice!(0, 3)
end
p smaller
smaller.slice!(0, 2)

smallest_range = 100
final = 0

smaller.each do |arr|
  day = arr[0]
  max = arr[1].to_i
  min = arr[2].to_i
  range = max - min
  if range < smallest_range
    final = day
    smallest_range = range
  end
end

puts "The smallest temperature range occured on day " + final 


