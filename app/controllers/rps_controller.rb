class RpsController < ApplicationController


def rock
  computer = ["paper", "scissors", "rock"]
  @computer_move = computer.sample
  @user_image = "/assets/images/rock.png"
  if @computer_move == "paper"
    @result = "You lost!"
    @comp_image = "/assets/images/paper.png"
    @label = "label-danger"
  elsif @computer_move == "scissors"
    @result = "You won!"
    @label = "label-success"
    @comp_image = "/assets/images/scissors.png"
  elsif @computer_move == "rock"
    @result = "You tied!"
    @label = "label-warning"
    @comp_image = "/assets/images/rock.png"
  end
    render("rock.html.erb")
  end

  def paper
    computer = ["paper", "scissors", "rock"]
    @computer_move = computer.sample
    @user_image = "/assets/images/paper.png"
    if @computer_move == "paper"
      @result = "You tied!"
      @label = "label-warning"
      @comp_image = "/assets/images/paper.png"
    elsif @computer_move == "scissors"
      @result = "You lost!"
      @label = "label-danger"
      @comp_image = "/assets/images/scissors.png"
    elsif @computer_move == "rock"
      @result = "You won!"
      @label = "label-success"
      @comp_image = "/assets/images/rock.png"
    end
      render("paper.html.erb")
    end

    def scissors
      computer = ["paper", "scissors", "rock"]
      @computer_move = computer.sample
      @user_image = "/assets/images/scissors.png"
      if @computer_move == "paper"
        @result = "You won!"
        @label = "label-success"
        @comp_image = "/assets/images/paper.png"
      elsif @computer_move == "scissors"
        @result = "You tied!"
        @label = "label-warning"
        @comp_image = "/assets/images/scissors.png"
      elsif @computer_move == "rock"
        @result = "You lost!"
        @label = "label-danger"
        @comp_image = "/assets/images/rock.png"
      end
        render("scissors.html.erb")
      end

end
