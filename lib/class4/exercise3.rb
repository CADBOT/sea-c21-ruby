#!/usr/bin/env ruby
#
# 5 points
#
# Write a program that asks whether or not you like tacos:
#
# If you reply with 'y', then we're friends:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# If you reply with 'n', then we're enemies:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   n
#   Get out of my sight!
#
# And if you reply with **anything** else, you have to try again:
#
#   $ ruby exercise3.rb
#   Do you like eating tacos? (y or n)
#   maybe
#   Try again
#   Do you like eating tacos? (y or n)
#   y
#   We can be friends!
#
# TIP #1: You only need to change the `ask` method.
#
# TIP #2: Use `return` to preemptively exit the `ask` method.

# Intentional divergence from the class style guide. I personally
# omit preferences if the method is a keyword, intended to be used
# as part of a DSL, or if the method is an accessor/mutator. I include
# them at all other times, suck as in my ask function below
#
# These rules are a little complex to start off with though, so from
# a pedagogic standpoint, I do like the rules given in this class.
#
# I also encourage short methods, but I think 10 lines might be a little
# too strict. I made a 9 line version of this function, and it was less
# clear in my opinion.

# rubocop:disable MethodLength
def ask()
  puts 'Do you like eating tacos? (y or n)'
  input = gets.chomp
  if input == 'y'
    print 'We can be friends!'
    return
  end
  if input == 'n'
    print 'Get out of my sight!'
    return
  end
  puts 'Try again'
  ask()
end

puts ask()
