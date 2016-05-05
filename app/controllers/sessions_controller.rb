class SessionsController < ApplicationController
  #you always need "controller" after the name here
  def rock
    render ("rocks.html.erb")
    @computer_move = ["rock", "paper", "scissors"].sample
    @user_move = ["rock"]
    if @user_move == @computer_move
      @result = "have tied the computer in a game of chance"
    elsif @user_move == "rock" && @computer_move == "paper"
      @result = "have been destroyed"
    elsif @user_move == "rock" && @computer_move == "scissors"
      @result = "have dominated the competition"
    end
  end

  def paper
    render ("paper.html.erb")
      @user_move = ["paper"]
    if @user_move == @computer_move
      @result = "have tied the computer in a game of chance"
    elsif @user_move == "paper" && @computer_move == "rock"
      @result = "have dominated the competition"
    elsif @user_move == "paper" && @computer_move == "scissors"
    end
  end

  def scissors
    render ("scissors.html.erb")
      @user_move = ["scissors"]
    if @user_move == @computer_move
      @result = "have tied the computer in a game of chance"
    elsif @user_move == "scissors" && @computer_move == "paper"
      @result = "have dominated the competition"
    elsif @user_move == "scissors" && @computer_move == "rock"
      @result = "have been destroyed"
    end
  end

end

# Original
# if @user_move == @computer_move
#   @result = "have tied the computer in a game of chance"
# elsif @user_move == "paper" && @computer_move == "rock"
#   @result = "have dominated the competition"
# elsif @user_move == "paper" && @computer_move == "scissors"
#   @result = "have been destroyed"
# elsif @user_move == "rock" && @computer_move == "paper"
#   @result = "have been destroyed"
# elsif @user_move == "rock" && @computer_move == "scissors"
#   @result = "have dominated the competition"
# elsif @user_move == "scissors" && @computer_move == "paper"
#   @result = "have dominated the competition"
# elsif @user_move == "scissors" && @computer_move == "rock"
#   @result = "have been destroyed"
# end

#don't name thsi application - it pulls from amother page
#needed to put the HTML in a folder called the same "Sessions" which is the same as controller

#eventually you want to add in the rock paper and scissors with this in HTML <%= rock %> and username in

# def @user_move = "rock"
#
#   @computer_move
# other logic in here too
