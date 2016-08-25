people = []

5.times do
  hash = {}
  puts "What is your first name?"
  hash["first_name"] = gets.chomp
  puts "What is your last name?"
  hash["last_name"] = gets.chomp
  puts "What is your email address?"
  email = gets.chomp
  until email.match(/(.com|@)+/)
    puts "Invalid email address. Please try again."
    email = gets.chomp
  end
  hash["email"] = email
  hash["account_number"] = rand.to_s[2..11]
  people << hash
end

people.each do |person|
  puts "FIRST NAME: " + person["first_name"]
  puts "LAST NAME: " + person['last_name']
  puts "EMAIL: " + person['email']
  puts "ACCT #:" + person['account_number']
end

puts "Which account would you like to access? Enter an account number:"

input_number = gets.chomp
hits = 0 
people.each do |person|
  if person["account_number"] == input_number
    puts "That account belongs to " + person["first_name"] + " " + person["last_name"] + " who can be reached at " + person["email"]
    hits += 1
  end
end
if hits.zero? 
  puts "No account found." 
end