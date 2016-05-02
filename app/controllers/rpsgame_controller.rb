class RpsgameController < ApplicationController

  def userplays

    if ["rock","scissors","paper"].exclude?(params[:urlsuffix])
      @user_move = "rock"
    else
      @user_move = params[:urlsuffix]
    end

    @computer_move = ["rock","scissors","paper"].sample

    if @computer_move == @user_move
      @result = "You're tied!"
      @label = "label-warning"
    elsif @computer_move == "rock" && @user_move == "scissors" || @computer_move == "scissors" && user_move == "paper" || @computer_move == "paper" && user_move == "rock"
      @result = "You lose!"
      @label = "label-danger"
    elsif @computer_move == "rock" && @user_move == "paper" || @computer_move == "scissors" && user_move == "rock" || @computer_move == "paper" && @user_move == "scissors"
      @result = "You win!"
      @label = "label-success"
    end

    render("rock.html.erb")
  end
end
