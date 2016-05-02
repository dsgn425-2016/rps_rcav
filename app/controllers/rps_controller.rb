class RpsController < ApplicationController
  def rock
    @user_move = "rock"
    @user_image="http://localhost:3000/assets/images/rock.png"

    @computer_move = ["rock","paper","scissors"].sample
    @computer_image="http://localhost:3000/assets/images/"+@computer_move+".png"

    if @user_move == @computer_move
      @result= "tie"
    elsif @computer_move ="paper"
        @result= "lose"
    else
      @result= "win"
    end

    render("rps/results.html.erb")
  end

  def paper
    @user_move = "paper"
    @user_image="http://localhost:3000/assets/images/paper.png"

    @computer_move = ["rock","paper","scissors"].sample

    @computer_image="http://localhost:3000/assets/images/"+@computer_move+".png"

    if @user_move == @computer_move
      @result= "tie"
    elsif @computer_move ="scissors"
        @result= "lose"
    else
      @result= "win"
    end

    render("rps/results.html.erb")
  end

  def scissors
    @user_move = "scissors"
    @user_image="http://localhost:3000/assets/images/scissors.png"

    @computer_move = ["rock","paper","scissors"].sample
    @computer_image="http://localhost:3000/assets/images/"+@computer_move+".png"

    if @user_move == @computer_move
      @result= "tie"
    elsif @computer_move ="rock"
        @result= "lose"
    else
      @result= "win"
    end

    render("rps/results.html.erb")
  end

end
