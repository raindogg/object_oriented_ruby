require './emailing.rb'
require './employee.rb'
require './manager.rb'
require './intern.rb'

employee1 = Actualize::Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Actualize::Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
p employee1
p employee2

manager = Actualize::Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
manager.print_info
manager.fire_all_employees

intern = Actualize::Intern.new({first_name: "Master", last_name: "Yoda", salary: 10, active: true})
