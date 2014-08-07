############################################################
#  name:        Ryan Teskey
#  Assignment:  Assignment 4
#  Date:        1/27/2011
#  Class:       CIS 282
#  Description: Rock, paper, scissors game
#
############################################################
wins = 0
losses = 0
ties = 0
def display_greeting
  print "let's Play Rock, Paper, scissors!\nPress Enter to Continue or Press Q and hit Enter to quit:"
end
def display_instructions
  puts "INSTRUCTIONS:\nThis game pits the player against the computer. TO play, you must\nenter one of the following moves when prompted: Rock, Paper, or scissors.\nThe game will then randomly select a move for the computer and \n the result of the game will be analysed to the following rules. \n* Rock crushes Scissors, Rock equals Rock, and Rock is covered by Paper \n* Paper covers Rock, Paper equals Paper, and Paper is cut by Scissors\n* Scissors cut Paper, Scissors equals Scissors, and scissors are crushed by Rock.\nGood luck!"
end
def line
  puts '#' * 60
end
def menu(arr)
  arr.each_with_index do |value, key|
    puts "#{key}: #{value}\n"
  end
  puts "Q: Quit\n"
end

options = %w{Rock Paper Scissors}
display_greeting
play = gets.downcase
if play != "q\n"
  display_instructions
end
while play != "q\n"
  line
  menu(options)
  print 'choice an option:'
  play = gets.downcase
  if play != "q\n"
    player_choice = options [play.to_i]
    computer_choice = options [rand(3)]
    puts 'player Vs. Computer'
    puts player_choice + ' Vs. ' + computer_choice
    wins = player_choice == options[0] && computer_choice == options[2] ? wins + 1 : wins
    losses = player_choice == options[0] && computer_choice == options[1] ? losses + 1 : losses
    ties = player_choice == options[0] && computer_choice == options[0] ? ties + 1 : ties
    wins = player_choice == options[1] && computer_choice == options[0] ? wins + 1 : wins
    losses = player_choice == options[1] && computer_choice == options[2] ? losses + 1 : losses
    ties = player_choice == options[1] && computer_choice == options[1] ? ties + 1 : ties
    wins = player_choice == options[2] && computer_choice == options[1] ? wins + 1 : wins
    losses = player_choice == options[2] && computer_choice == options[0] ? losses + 1 : losses
    ties = player_choice == options[2] && computer_choice == options[2] ? ties + 1 : ties
  end
  line
  puts "wins:#{wins}", "losses: #{losses}", "ties: #{ties}"
end