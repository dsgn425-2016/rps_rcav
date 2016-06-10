class SessionsController < ApplicationController
  def application
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================

    # Your logic here

    # In the end, make sure you assign the correct values to the
    #   following two variables:

    @computer_move = ["rock", "paper", "scissors"].sample
    if @user_move == @computer_move
      @result = "tied"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "win"
    elsif @user_move == "paper" && @computer_move == "scissors"
      @result = "lose"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "lose"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "win"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "lose"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "win"
    end

    render 'application'
  end

  def rock
    render 'rock'
  end

  def paper
    render 'paper'
  end

  def scissors
    render 'scissors'
  end
end
