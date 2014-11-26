# 5 points
#
# What if Nana doesn't want you to leave? Copy your solution to exercise2 and
# paste it here. Modify the program so that you have to type 'BYE' three times
# **in a row** to stop the conversation.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
#
# If you shout 'BYE' three times, but not in a row, you should still be talking
# to Nana.
#
#   $ ruby exercise3.rb
#   Nana: HI SWEETIE! GIVE NANA A KISS!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   bye
#   Nana: HUH?! SPEAK UP, SWEETIE!
#   I HAVE TO GO NOW
#   Nana: NOT SINCE 1936!
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: HOW'S SCHOOL GOING?
#   BYE
#   Nana: BYE SWEETIE!
count = 0
puts 'Nana: HI SWEETIE! GIVE NANA A KISS!'
loop do
  input = gets.chomp
  if input != input.upcase
    count = 0
    puts 'Nana: HUH?! SPEAK UP, SWEETIE!'
  elsif input == 'BYE'
    count += 1
    puts "Nana: HOW'S SCHOOL GOING?" unless count == 3
    if count == 3
      puts 'Nana: BYE SWEETIE!'
      break
    end
  else
    count = 0
    puts "Nana: NOT SINCE #{Random.rand(1930..1950)}!"
  end
end
