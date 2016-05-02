class GameController < ApplicationController

  def playscissor
    @user_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result =  "You tied!"
      render("tie.html.erb")

    elsif @user_move == "scissors" && @computer_move == "rock"
      @result =  "You lose!"
      render("lose.html.erb")

    elsif @user_move == "scissors" && @computer_move == "paper"
      @result =  "You win!"
      render("win.html.erb")
    end
  end


  def playrock
    @user_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result =  "You tied!"
      render("tie.html.erb")

    elsif @user_move == "rock" && @computer_move == "paper"
      @result =  "You lose!"
      render("lose.html.erb")

    elsif @user_move == "rock" && @computer_move == "scissors"
      @result =  "You win!"
      render("win.html.erb")
    end
  end

  def playpaper
    @user_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample

    if @user_move == @computer_move
      @result =  "You tied!"
      render("tie.html.erb")

    elsif @user_move == "paper" && @computer_move == "rock"
      @result =  "You win!"
      render("win.html.erb")

    elsif @user_move == "paper" && @computer_move == "scissors"
      @result =  "You lose!"
      render("lose.html.erb")
    end
  end

end
