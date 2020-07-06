def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_total = deal_card + deal_card
  display_card_total(card_total)
  return card_total
end

def hit?(current_card_total)
   prompt_user
   user_input = get_user_input
  if user_input == 'h'
    new_card_total = deal_card + current_card_total
  elsif user_input == 's'
    current_card_total
  else 
    invalid_command
     prompt_user
  get_user_input
  end 
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  card_total = initial_round
  prompt_user
  counter = 0 
  until counter > 21 do
  hit
  counter +=1
end
end_game
end
    
