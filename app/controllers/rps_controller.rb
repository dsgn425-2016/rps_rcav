class RpsController < ApplicationController
def rock
  computer_play = ["rock", "paper", "scissors"].sample
    if computer_play == "rock"
      @computer_move = "Rock"
         @result = "You tied!"
        @comp_img = "http://localhost:3000/assets/images/rock.png"
        @button_color = "label-warning"

      elsif computer_play == "paper"
         @computer_move = "Paper"
        @result = "You lost!"
        @comp_img = "http://localhost:3000/assets/images/paper.png"
        @button_color = "label-danger"

      else computer_play == "scissors"
        @computer_move = "Scissors"
        @result = "You won!"
        @comp_img = "http://localhost:3000/assets/images/scissors.png"
        @button_color = "label-success"
      end
  render("rock.html.erb")
end
def scissors
  computer_play = ["rock", "paper", "scissors"].sample
      if computer_play == "rock"
        @computer_move = "Rock"
        @result = "You lost!"
        @comp_img = "http://localhost:3000/assets/images/rock.png"
        @button_color = "label-danger"

      elsif computer_play == "paper"
        @computer_move = "Paper"
        @result = "You won!"
        @comp_img = "http://localhost:3000/assets/images/paper.png"
         @button_color = "label-success"
 else computer_play == "scissors"
      @computer_move = "Scissors"
      @result = "You tied!"
      @comp_img = "http://localhost:3000/assets/images/scissors.png"
      @button_color = "label-warning"
    end
  render("scissors.html.erb")
end
def paper
  computer_play = ["rock", "paper", "scissors"].sample
    if computer_play == "rock"
      @computer_move = "Rock"
      @result = "You won!"
      @comp_img = "http://localhost:3000/assets/images/rock.png"
      @button_color = "label-success"
elsif computer_play == "paper"
      @computer_move = "Paper"
      @result = "You tied!"
      @comp_img = "http://localhost:3000/assets/images/paper.png"
      @button_color = "label-warning"

    else computer_play == "scissors"
      @computer_move = "Scissors"
      @result = "You lost!"
      @comp_img = "http://localhost:3000/assets/images/scissors.png"
      @button_color = "label-danger"
    end

  render("paper.html.erb")
end
end
