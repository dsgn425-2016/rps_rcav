class PlayController < ApplicationController

  def rock

    render("rock.html.erb")
  end

  def paper

    render("rock.html.erb")
  end

  def scissors
    
    render("rock.html.erb")
  end
end


# if user_move == computer_move
#   puts "You tied!"
# elsif user_move == "paper" && computer_move == "rock"
#   puts "You win!"
# elsif user_move == "paper" && computer_move == "scissors"
#   puts "You lose!"
# elsif user_move == "scissors" && computer_move == "rock"
#   puts "You lose!"
# elsif user_move == "scissors" && computer_move == "paper"
#   puts "You win!"
# elsif user_move == "rock" && computer_move == "paper"
#   puts "You lose!"
# elsif user_move == "rock" && computer_move == "scissors"
#   puts "You win!"
# end
