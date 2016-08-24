def friendly_data(file, useless_lines, title, data_point1, data_point2)
  input = File.open(file)
  arrays = []
  input.each { |line| arrays << line.split }
 
  delete1 = useless_lines[0].to_i 
  delete2 = useless_lines[1].to_i
  arrays.slice!(delete1)
  arrays.slice!(delete2)

  final = "holder"
  range = 100

  arrays.each do |array|
    name = array[title.to_i]
    point1 = array[data_point1].to_i
    point2 = array[data_point2].to_i
    difference = (point1 - point2).abs
    if difference < range
      final = name
      range = difference 
    end
  end
  puts final 
end
friendly_data("football.dat", [0, 17], 1, 6, 8)

friendly_data("weather.dat", [0, 0], 0, 1, 2)