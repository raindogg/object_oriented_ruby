input = File.open("football.dat") 
arrays = []
input.each { |line| arrays << line.split }

smaller = []
arrays.each do |array| 
  smaller << [array[1], array[6], array[8]]
end
smaller.slice!(0)
smaller.slice!(17)

difference = 100
team = "filler"

smaller.each do |array|
  goals_for = array[1].to_i
  goals_against = array[2].to_i
  team_difference = (goals_for - goals_against).abs
  if team_difference < difference
    team = array[0]
    difference = team_difference
  end
end

puts "The team with the smallest difference in goals for vs. goals against is " + team