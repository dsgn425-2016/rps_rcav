class GameController < ApplicationController
  def fist
    comp_move_num = rand(3)
    if comp_move_num == 0
      @computer_move = "Rock"
      @outcome = "You tied!"
    elsif comp_move_num ==1
      @computer_move = "Paper"
      @outcome = "You lost!"
    else
      @computer_move = "Scissors"
      @outcome = "You won!"
    end
    render 'fist'
  end

  def flat
    comp_move_num = rand(3)
    if comp_move_num == 0
      @computer_move = "Rock"
      @outcome = "You won!"
    elsif comp_move_num ==1
      @computer_move = "Paper"
      @outcome = "You tied!"
    else
      @computer_move = "Scissors"
      @outcome = "You lost!"
    end
    render 'flat'
  end

  def cut
    comp_move_num = rand(3)
    if comp_move_num == 0
      @computer_move = "Rock"
      @outcome = "You lost!"
    elsif comp_move_num ==1
      @computer_move = "Paper"
      @outcome = "You won!"
    else
      @computer_move = "Scissors"
      @outcome = "You tied!"
    end
    render 'cut'
  end
end
