class RpsgameController < ApplicationController

  def userplays
    @user_move = params["urlsuffix"].capitalize
    @user_image = "/assets/images/#{@user_move}.png"
    choices = ["rock","scissors","paper"]
    @computer_move = choices.sample
    if @computer_move == "rock"
      @result = "You're tied!"
      @computer_image = "/assets/images/rock.png"
      @label = "label-warning"
    elsif @computer_move == "paper"
      @result = "You lose!"
      @computer_image = "/assets/images/paper.png"
      @label = "label-danger"
    elsif @computer_move == "scissors"
      @result = "You win!"
      @computer_image = "/assets/images/scissors.png"
      @label = "label-success"
    end
    render("rock.html.erb")
  end

end
