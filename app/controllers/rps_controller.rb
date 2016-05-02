class RpsController < ApplicationController
  def ready
    @user_move="rock"
    @computer_move = ["rock"]
    @user_image="/assets/images/rock.png"
    @result="ready?"
    @computer_image="/assets/images/rock.png"
    @label="label-warning"
    render("ready.html.rb")
  end


  def rock
    @user_move="rock"
    @computer_move = ["rock","paper","scissors"].sample
    @user_image="/assets/images/rock.png"
    if @computer_move == "rock"
      @result="tied!"
      @computer_image="/assets/images/rock.png"
      @label="label-warning"
    elsif @computer_move == "paper"
      @result="lost!"
      @computer_image="/assets/images/paper.png"
      @label="label-danger"
    elsif @computer_move == "scissors"
      @result="won!"
      @computer_image="/assets/images/scissors.png"
      @label="label-success"
    end
    render("rock.html.rb")
  end

  def scissors
    @user_move="scissors"
    @computer_move = ["rock","paper","scissors"].sample
    @user_image="/assets/images/scissors.png"
    if @computer_move == "scissors"
      @result="tied!"
      @computer_image="/assets/images/scissors.png"
      @label="label-warning"
    elsif @computer_move == "rock"
      @result="lost!"
      @computer_image="/assets/images/rock.png"
      @label="label-danger"
    elsif @computer_move == "paper"
      @result="won!"
      @computer_image="/assets/images/paper.png"
      @label="label-success"
    end
    render("scissors.html.rb")
  end

  def paper
    @user_move="paper"
    @computer_move = ["rock","paper","scissors"].sample
    @user_image="/assets/images/paper.png"
    if @computer_move == "paper"
      @result="tied!"
      @computer_image="/assets/images/paper.png"
      @label="label-warning"
    elsif @computer_move == "scissors"
      @result="lost!"
      @computer_image="/assets/images/scissors.png"
      @label="label-danger"
    elsif @computer_move == "rock"
      @result="won!"
      @computer_image="/assets/images/rock.png"
      @label="label-success"
    end
    render("paper.html.rb")

  end

end
