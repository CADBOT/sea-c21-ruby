# 5 points
#
# Write a program that asks for a person's first name, then middle name,
# then last name, and then greets the person using their full name.
#
# Here's how the program must work:
#
#   $ ruby exercise4.rb
#   What's your first name?
#   Samuel
#   What's your middle name?
#   Leroy
#   What's your last name?
#   Jackson
#   Nice to meet you, Samuel Leroy Jackson.

# Probably taking DRY to it's logical extreme...
# But having some fun wiith it! :)
name = ['first', 'middle', 'last'].map do |e|
  puts "What's your #{e} name?"
  gets.chomp
end
puts "Nice to meet you, #{name.join(' ')}."

# This would be my student version though
=begin
puts "What's your first name?"
first_name = gets.chomp
puts "What's your middle name?"
middle_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Nice to meet you, #{first_name} #{middle_name} #{last_name}."
=end
