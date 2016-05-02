class RpsController < ApplicationController
  def game_output
    @your_image = "assets/images/#{@your_move}.png"
    @computer_image = "assets/images/#{@computer_move}.png"
    render ("output.html.erb")
  end

  def play_rock
    @your_move = "Rock"
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    if @computer_move==@your_move
      @result_words= "You tied!"
      @result_label = "label-warning"
    elsif @computer_move=="Paper"
      @result_words = "You lose!"
      @result_label="label-danger"
    else
      @result_words = "You won!"
      @result_label="label-success"
    end
    game_output
  end

  def play_paper
    @your_move = "Paper"
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    if @computer_move==@your_move
      @result_words= "You tied!"
      @result_label = "label-warning"
    elsif @computer_move=="Scissors"
      @result_words = "You lose!"
      @result_label="label-danger"
    else
      @result_words = "You won!"
      @result_label="label-success"
    end
    game_output
  end

  def play_scissors
    @your_move = "Scissors"
    @computer_move = ["Rock", "Paper", "Scissors"].sample
    if @computer_move==@your_move
      @result_words= "You tied!"
      @result_label = "label-warning"
    elsif @computer_move=="Rock"
      @result_words = "You lose!"
      @result_label="label-danger"
    else
      @result_words = "You won!"
      @result_label="label-success"
    end
    game_output
  end
end

#   def play_rock
#     @your_move = "rock"
#     @computer_move = ["rock", "paper", "scissors"].sample
#     if @computer_move==@your_move
#       render("tied.html.erb")
#     elsif @computer_move=="paper"
#       render("lose.html.erb")
#     else
#       render("won.html.erb")
#     end
#   end
#
#   def play_paper
#     @your_move = "paper"
#     @computer_move = ["rock", "paper", "scissors"].sample
#     if @computer_move==@your_move
#       render("tied.html.erb")
#     elsif @computer_move=="scissors"
#       render("lose.html.erb")
#     else
#       render("won.html.erb")
#     end
#   end
#
#   def play_scissors
#     @your_move = "scissors"
#     @computer_move = ["rock", "paper", "scissors"].sample
#     if @computer_move==@your_move
#       render("tied.html.erb")
#     elsif @computer_move=="rock"
#       render("lose.html.erb")
#     else
#       render("won.html.erb")
#     end
#   end
# end
