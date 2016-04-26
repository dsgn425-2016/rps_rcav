class GameController < ApplicationController

  def play_rock
    @human_move = "rock"
    options = ["rock", "paper", "scissors"]
    @ai_move = options.sample
    case @ai_move
    when "rock"
      @result = "You tied!"
    when "paper"
      @result = "You lost"
    when "scissors"
      @result = "You won!"
    end
    render("play.html.erb")
  end

  def play_paper
    @human_move = "paper"
    options = ["rock", "paper", "scissors"]
    @ai_move = options.sample
    case @ai_move
    when "rock"
      @result = "You won!"
    when "paper"
      @result = "You lost"
    when "scissors"
      @result = "You lost!"
    end
    render("play.html.erb")
  end

  def play_scissors
    @human_move = "scissors"
    options = ["rock", "paper", "scissors"]
    @ai_move = options.sample
    case @ai_move
    when "rock"
      @result = "You lost!"
    when "paper"
      @result = "You won"
    when "scissors"
      @result = "You tied!"
    end
    render("play.html.erb")
  end
end
