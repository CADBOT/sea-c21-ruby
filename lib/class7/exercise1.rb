#!/usr/bin/env ruby
#
# 5 points
#
# The following five methods must be fixed:
#
#   Integer#hours_in_seconds #=> Integer
#
#     Returns the number of hours converted to seconds.
#
#     10.hours_in_seconds  #=> 36_000
#
#   String#indent(amount = 2) #=> String
#
#     Returns `amount` spaces plus the String. The default `amount` is 2.
#
#     'foo'.indent     #=> '  foo'
#     'foo'.indent(3)  #=> '   foo'
#
#   Integer#to_roman => String
#
#     Returns the roman numeral equavilent of the arabic number.
#
#     1999.to_roman  #=> 'MCMXCIX'
#
#   Array#second #=> Object
#
#     Returns the second element of the Array.
#
#     [10, 20, 30].second  #=> 20
#
#   Array#third #=> Object
#
#     Returns the third element of the Array.
#
#     [10, 20, 30].third  #=> 30
#
# HINT: Remember to use `self` to access the receiver object of the method
#
#     class Integer
#       def plus_forty_two
#         self + 42
#       end
#     end
#
#     1.plus_forty_two  #=> 43

class Integer
  def hours_in_seconds
    self * 60 * 60
  end
end

class String
  def indent(amount = 2)
    ' ' * amount + self
  end
end

class Integer
  # rubocop:disable MethodLength
  def to_roman
    roman_numerals = {
      1000 => 'M',
      900 => 'CM',
      500 => 'D',
      400 => 'CD',
      100 => 'C',
      90 => 'XC',
      50 => 'L',
      40 => 'XL',
      10 => 'X',
      9 => 'IX',
      5 => 'V',
      4 => 'IV',
      1 => 'I'
    }

    # rubocop doesn't like my use of reduce here...
    # I could see the benefit of each_with_object
    # here, as it would allow me to drop out the
    # extra result statement, however, I find
    # roman_numerals.keys.each_with_object to be a little
    # long looking
    # rubocop:disable EachWithObject
    num = self
    roman_numerals.keys.reduce('') do |result, divisor|
      while num / divisor > 0 && num > 0
        result += roman_numerals[divisor]
        num -= divisor
      end
      result
    end
  end
end

class Array
  def second
    self[1]
  end

  def third
    self[2]
  end
end
