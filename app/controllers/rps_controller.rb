class RpsController < ApplicationController

  def tied
    @result_words= "You tied!"
    @result_label = "label-warning"
  end

  def lose
    @result_words = "You lose!"
    @result_label="label-danger"
  end

  def won
    @result_words = "You won!"
    @result_label="label-success"
  end

  def play_rock
    @your_move = "rock"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move==@your_move
      tied
    elsif @computer_move=="paper"
      lose
    else
      won
    end
    render ("output.html.erb")
  end

  def play_paper
    @your_move = "paper"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move==@your_move
      tied
    elsif @computer_move=="scissors"
      lose
    else
      won
    end
    render ("output.html.erb")
  end

  def play_scissors
    @your_move = "scissors"
    @computer_move = ["rock", "paper", "scissors"].sample
    if @computer_move==@your_move
      tied
    elsif @computer_move=="rock"
      lose
    else
      won
    end
    render ("output.html.erb")
  end
end
