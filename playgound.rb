# Say hello-world in different ways
# Simple put string
# Using a variable
# Using a method

puts "Working with Ruby"
# Calls 'puts' method which prints the string and returns 'nil'

p "Working with Ruby"
# Sends string to 'p' method and returns the same argument string instead 
# of 'nil'

# print "Working with Ruby" works the same as 'p' but without newline

greeting = "Working with Ruby"
puts greeting

def say_something(str)
  puts str
end

say_something("Working with Ruby")

# String concatenation
sentence = "Working with Ruby"
p sentence += " is fun"

# String interpolation - Only works with double quotes
puts "This is string interpolation: #{sentence}"

# Print all methods avaible for a given class e.g. Strings
puts sentence.methods

# Getting keyboard input
puts "Type name"
name = gets.chomp

# Arrays
x = 1..10 # Range
p x.to_a.shuffle
y = "a".."z"
p y.to_a << "A"
p y.to_a.unshift(1..9)
p y.to_a
p y.minmax

# Hashes (Dictionaries)
hash = {'a' => 1, 'b' => 2, 'c' => 3}
p hash
hash['d'] = 4
p hash

# OOP
class Student
  attr_accessor :first_name, :last_name, :email, :username, :password
  
  def initialize(first_name, last_name, username, email, password)
    @first_name = first_name
    @last_name = last_name
    @username = username
    @email = email
    @password = password
  end
  
  def to_s
    "First name: #{@first_name}, Last name: #{@last_name}, Username: #{@username}, email address: #{@email}"
  end
  
end 

student = Student.new("Matthew", "Nash", "mtnash", "mtnash@cpp.edu", "wordpass1")

puts student

# Encryption with bcrypt
require 'bcrypt'

pw = BCrypt::Password.create("wordpass1")

p pw
p pw.version
p pw.cost
pw == "wordpass1"
pw == "wordpass2"

# pw = BCrypt::Password.new("$2a$10$9.JHZB7/Grdfn07s3oOZSemKwXDzAeA7t6KFJXFrK.5ZddDEPuK0C")
# pw == "wordpass1"

# Convert script into a module
module ModuleName
  
# Code goes here

end