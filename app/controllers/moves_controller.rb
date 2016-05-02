class MovesController < ApplicationController
  def rock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
     @result = "tie!"
   elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
    else
      @result = "That doesn't seem to be a valid move."
    end

    render ("rock.html.erb")
  end

  def paper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
     @result = "tie!"
   elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
    else
      @result = "That doesn't seem to be a valid move."
    end

    render ("paper.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
     @result = "tie!"
   elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose!"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win!"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose!"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win!"
    else
      @result = "That doesn't seem to be a valid move."
    end

    render ("scissors.html.erb")
  end

end
