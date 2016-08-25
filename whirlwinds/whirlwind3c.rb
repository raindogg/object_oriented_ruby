people = []

5.times do
  hash = {}
  puts "What is your first name?"
  hash["first_name"] = gets.chomp
  puts "What is your last name?"
  hash["last_name"] = gets.chomp
  puts "What is your email address?"
  hash["email"] = gets.chomp
  hash["account_number"] = rand.to_s[2..11]
  people << hash
end

people.each do |person|
  puts "FIRST NAME: " + person["first_name"]
  puts "LAST NAME: " + person['last_name']
  puts "EMAIL: " + person['email']
  puts "ACCT #:" + person['account_number']
end
