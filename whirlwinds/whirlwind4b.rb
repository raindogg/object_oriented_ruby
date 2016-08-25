puts 'How many students do you have?'

number = gets.chomp.to_i

students = []

number.times do
  puts "Please enter the student's name."
  students << gets.chomp
end

groups = []
if number.odd?
  number_of_groups = (number / 2) - 1
  puts "Group: " + students[0] + ", " + students[1] + " and " + students[2]

  3.times do 
    students.delete_at(0)
  end
else
  number_of_groups = number / 2
end
  
counter = 0

number_of_groups.times do
  groups << [students[counter], students[counter + 1]]
  counter += 2
end
groups.each do |group|
  puts "Group: " + group[0] + " and " + group[1]
end
