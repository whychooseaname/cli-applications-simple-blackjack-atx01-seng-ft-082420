require 'pry' 

def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card=rand(1..11)
end

def display_card_total (card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
  
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp 
end

def end_game (card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  hand = deal_card + deal_card
  display_card_total(hand)
  return hand
end

def hit? (card_total)
  # code hit? here
  
  prompt_user
  input=get_user_input
  if input == "h"
    card_total += deal_card
  elsif input == "s" 
    card_total
  else 
    invalid_command
    prompt_user
    input=get_user_input
  end 
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome 
  card_total = initial_round
  if card_total < 21
    hit? (card_total)
    display_card_total (card_total)
  else
    display_card_total (card_total)
    end_game
  end
end