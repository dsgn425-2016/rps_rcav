class RpsController < ApplicationController




  def game(move)
    moves = ["rock","paper","scissors"]
    rando = rand(2)
    @comp_move = moves[rando]
    @comp_img = "/assets/images/" + @comp_move + ".png"

    @winner = ""
    if move == "rock" && @comp_move == "paper" || move == "paper" && @comp_move == "scissors" || move == "scissors" && @comp_move == "rock"
      @winner = "the computer wins!"
    elsif move == "rock" && @comp_move == "scissors" || move == "paper" && @comp_move == "rock" || move =="scissors" && @comp_move =="paper"
      @winner = "You win!"
    elsif move == @comp_move
      @winner = "it's a tie"
    end
  end



  def welcome
    render("welcome.html.erb")
  end
  def rock
    game("rock")
  end
  def scissors
    game("scissors")

  end
  def paper
    game("paper")

  end
end
