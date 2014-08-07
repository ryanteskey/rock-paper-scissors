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
  print "let's Play Rock, Paper, scissors!", "Press Enter to Continue or Press Q and hit Enter to quit:"
end
def display_instructions
  puts "INSTRUCTIONS:", "This game pits the player against the computer. TO play, you must\nenter one of the following moves when prompted: Rock, Paper, or scissors.\nThe game will then randomly select a move for the computer and \n the result of the game will be analysed to the following rules. \n* Rock crushes Scissors, Rock equals Rock, and Rock is covered by Paper \n* Paper covers Rock, Paper equals Paper, and Paper is cut by Scissors\n* Scissors cut Paper, Scissors equals Scissors, and scissors are crushed by Rock.\nGood luck!"
end
def line
  puts '#' * 60
end
objects = ['0 Rock', '1 Paper', '2 Scissors']
object = %w{Rock Paper Scissors}
display_greeting
play = gets
if play != "q\n"
  display_instructions
end
while play != "q\n"
  line
  puts objects
  print "choice an option:"
  player = gets.to_i
  player_choice = object [player]
  computer_choice = object [rand(3)]
  #leaves the game counter
  puts "player Vs. Computer"
  puts player_choice + " Vs. " + computer_choice
  if player_choice == object[0] && computer_choice == object[2]
    wins = wins
    if wins >= 0
      puts wins
      wins = wins + 1
    end
  end
  if player_choice == object[0] && computer_choice == object[1]
    losses = losses
    if losses >= 0
      puts losses
      losses = losses + 1
    end
  end
  if player_choice == object[0] && computer_choice == object[0]
    ties =ties
    if ties >= 0
      puts ties
      ties = ties + 1
    end
  end
  if player_choice == object[1] && computer_choice == object[0]
    wins = wins
    if wins >= 0
      puts wins
      wins = wins + 1
    end
  end
  if player_choice == object[1] && computer_choice == object[2]
    losses = losses
    if losses >= 0
      puts losses
      losses = losses + 1
    end
  end
  if player_choice == object[1] && computer_choice == object[1]
    ties =ties
    if ties >= 0
      puts ties
      ties = ties + 1
    end
  end
  if player_choice == object[2] && computer_choice == object[1]
    wins = wins
    if wins >= 0
      puts wins
      wins = wins + 1
    end
  end
  if player_choice == object[2] && computer_choice == object[0]
    losses = losses
    if losses >= 0
      puts losses
      losses = losses + 1
    end
  end
  if player_choice == object[2] && computer_choice == object[2]
    ties =ties
    if ties >= 0
      puts ties
      ties = ties + 1
    end
  end
  line
  line
  puts "wins:#{wins}", "losses: #{losses}", "ties: #{ties}"
  line
  line
  display_greeting
  play = gets
end