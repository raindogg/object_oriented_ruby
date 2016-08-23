require 'Faker'

class Employee
  attr_reader :name, :company, :PhoneNumber

  def initialize(input_hash)
    @name = input_hash[:name]
    @company = input_hash[:company]
    @phonenumber = input_hash[:PhoneNumber]
  end

  def print_info
    puts @name + " works at " + @company + " and can be reached at " + @phonenumber + "."
  end
end

100.times do |emp|
  emp = Employee.new({name: Faker::Name.name, company: Faker::Company.name, PhoneNumber: Faker::PhoneNumber.phone_number})
  emp.print_info
end
