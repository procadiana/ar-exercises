require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'


# Exercise 3: Delete the third store
# Load the third store (into @store3) as you did the other two before.
# Using Active Record's destroy method, delete the store from the database.
# Verify that the store has been deleted by again outputting (putsing) the count (as you did in Exercise 1.)


puts "Exercise 3"
puts "----------"

@store3 = Store.find(3)
@store3.destroy

puts "We have #{Store.count} stores"

# Your code goes here ...
