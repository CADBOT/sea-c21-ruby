# 5 points
#
# Write a program that displays the lyrics to the beloved nursery rhyme
# "3 Bottles of Beer on the Wall".
#
# Here's how the program must work:
#
#   $ ruby exercise1.rb
#   3 bottles of beer on the wall, 3 bottles of beer!
#   Take one down, pass it around, 2 bottles of beer on the wall!
#   2 bottles of beer on the wall, 2 bottles of beer!
#   Take one down, pass it around, 1 bottle of beer on the wall!
#   1 bottle of beer on the wall, 1 bottle of beer!
#   Take one down, pass it around, no more bottles of beer on the wall!
#   No more bottles of beer on the wall, no more bottles of beer!
#   Go to the store and buy some more, 3 bottles of beer on the wall!
#
# TIP: I expect you to use a loop.
# Honestly, all the regexes I used are a little silly. I was attempting
# to get it all in one loop. A cleaner version of this would probably
# take some of this lines and write them outside the loop.
# Specifically: 'Take one down, pass it around, 1 bottle of beer on the wall!'
# would be hardcoded, as would subsequent lines of the song.
3.downto(0).each do |n|
  s1 = "#{n} bottles of beer on the wall, #{n} bottles of beer!"
  # Modify for special cases of singular bottle or "no more" bottles
  s1.gsub!(/bottles/, 'bottle') if n == 1
  # First "No more" is capitalized!
  s1.sub!(/0/, 'No more')
  # Second one is undercase though
  s1.sub!(/0/, 'no more')
  s2 =  "Take one down, pass it around, #{n - 1} bottles of beer on the wall!"
  s2.gsub!(/bottles/, 'bottle') if n - 1 == 1
  s2.sub!(/0/, 'no more')
  puts s1
  if n == 0
    puts 'Go to the store and buy some more, 3 bottles of beer on the wall!'
  else
    puts s2
  end
end
