require_relative '../setup'
#### Exercise 1: Create 3 stores

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1260000 carries women's apparel only)
#   * Gastown (annual_revenue of 190000 carries men's apparel only)
# 2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.

puts "Exercise 1"
puts "----------"

# Your code goes below here ...

class Store < ActiveRecord::Base
  has_many :stores
  has_many :employees
end

burnaby = Store.create(name: "Burnaby", annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

richmond = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

gastown = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts "We have #{Store.count} stores"
