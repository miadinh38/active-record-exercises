require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

# Exercise 5: Calculations
# Output the total revenue for the entire company (all stores), using Active Record's .sum calculation method.
# On the next line, also output the average annual revenue for all stores.
# Output the number of stores that are generating $1M or more in annual sales. 
# Hint: Chain together where and size (or count) Active Record methods.

puts Store.sum('annual_revenue')

puts Store.sum('annual_revenue') / Store.count

puts Store.where('annual_revenue >= ?', 1000000).count


