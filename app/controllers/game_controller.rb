class GameController < ApplicationController
  def rockaction
    @computer_move = rand(1..3)
@result = "It's a tie!"
    if @computer_move == 1
  @result = "It's a tie!"
elsif @computer_move == 2
  @result = "You lose!"

else
  @result = "You win!"
  render ("rockaction.html.erb")
end
end



def paperaction

  if @computer_move == 1
    @result = "You win!"
  elsif @computer_move == 2
    @result = "It's a tie!"

  else
    @result = "You lose!"
    render ("paperaction.html.erb")
end
end

def scissoraction
  
  if @computer_move == 1
    @result = "You lose"
  elsif @computer_move == 2
    @result = "You win!"
  else
    @result = "It's a tie"
    render ("scissoraction.html.erb")
end
end
end
