class SessionsController < ApplicationController
  #you always need "controller" after the name here
  def rock
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    # @computer_image = "assets/images/#{@computer_move}.png"
    @user_move = "Rock"
    @rps_image= "assets/images/rock.png"
    if @user_move == @computer_move
      @result = "have tied the computer in a game of chance"
    elsif @user_move == "Rock" && @computer_move == "Paper"
      @result = "You have been destroyed"
    elsif @user_move == "Rock" && @computer_move == "Scissors"
      @result = "You have dominated the competition"
    end
    render ("rocks.html.erb")
  end

  def paper
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    @user_move = "Paper"
    @rps_image= "assets/images/paper.png"
    if @user_move == @computer_move
      @result = "You have tied the computer in a game of chance"
    elsif @user_move == "Paper" && @computer_move == "Rock"
      @result = "You have dominated the competition"
    elsif @user_move == "Paper" && @computer_move == "Scissors"
      @result = "You are bad at this game, and should feel bad"
    end
    render ("paper.html.erb")
  end

  def scissors
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    @user_move = "Scissors"
    @rps_image= "assets/images/scissors.png"
    if @user_move == @computer_move
      @result = "have tied the computer in a game of chance"
    elsif @user_move == "Scissors" && @computer_move == "Paper"
      @result = "You have dominated the competition"
    elsif @user_move == "Scissors" && @computer_move == "Rock"
      @result = "You have been destroyed"
    end
    render ("scissors.html.erb")
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
