module Actualize
  class Employee
    # initally we used attr_accessor. Not wrong, but gave the program 
    # more power than it needed. 
    attr_reader :first_name, :last_name 
    attr_writer :active

    def initialize(input_options)
      @first_name = input_options[:first_name]
      @last_name = input_options[:last_name]
      @salary = input_options[:salary]
      @active = input_options[:active]
    end

    def print_info
      puts "#{@first_name} #{@last_name} makes #{@salary} a year."
    end

    def give_annual_raise
      @salary = 1.05 * @salary
    end
  end
end