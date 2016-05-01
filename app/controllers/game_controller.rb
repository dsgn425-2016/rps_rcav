class GameController < ApplicationController

  def play_rock
    @human_move = "rock"
    options = ["rock", "paper", "scissors"]
    @ai_move = options.sample
    case @ai_move
    when "rock"
      @result = "You tied!"
      @result_style = "label-warning"
    when "paper"
      @result = "You lost"
      @result_style = "label-danger"
    when "scissors"
      @result = "You won!"
      @result_style = "label-success"
    end
    @rock_button_style = "btn-info"
    @paper_button_style = "btn-block"
    @scissors_button_style = "btn-block"

    render("play.html.erb")
  end

  def play_paper
    @human_move = "paper"
    options = ["rock", "paper", "scissors"]
    @ai_move = options.sample
    case @ai_move
    when "rock"
      @result = "You won!"
      @result_style = "label-success"
    when "paper"
      @result = "You tied!"
      @result_style = "label-warning"
    when "scissors"
      @result = "You lost!"
      @result_style = "label-danger"
    end
    @rock_button_style = "btn-block"
    @paper_button_style = "btn-info"
    @scissors_button_style = "btn-block"

    render("play.html.erb")
  end

  def play_scissors
    @human_move = "scissors"
    options = ["rock", "paper", "scissors"]
    @ai_move = options.sample
    case @ai_move
    when "rock"
      @result = "You lost!"
      @result_style = "label-danger"
    when "paper"
      @result = "You won"
      @result_style = "label-success"
    when "scissors"
      @result = "You tied!"
      @result_style = "label-warning"
    end
    @rock_button_style = "btn-block"
    @paper_button_style = "btn-block"
    @scissors_button_style = "btn-info"
    render("play.html.erb")
  end
end
