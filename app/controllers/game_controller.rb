class GameController <ApplicationController

  def playrock
    @user_move = "rock"
    @moves=["rock","paper","scissors"]
    @computer_move = @moves.sample
    @user_image="/assets/images/rock.png"
      if @computer_move=="rock"
        @result="tied"
        @image="/assets/images/rock.png"
        @label="label-warning"
      elsif @computer_move=="paper"
      @result= "lost"
      @label="label-danger"
      @image="/assets/images/paper.png"
    else
      @result="won"
      @label="label-success"
      @image="/assets/images/scissors.png"
  end

  render("rps.html.erb")
end

def playpaper
  @user_move = "paper"
  @user_image= "/assets/images/paper.png"
  @moves=["rock","paper","scissors"]
  @computer_move = @moves.sample

    if @computer_move=="paper"
      @result="tied"
      @image="/assets/images/paper.png"
      @label="label-warning"
    elsif @computer_move=="rock"
    @result= "won"
    @label="label-success"
    @image="/assets/images/rock.png"
  else
    @result="lost"
    @label="label-danger"
    @image="/assets/images/scissors.png"
end

render("rps.html.erb")
end

def playscissors
  @user_move = "scissors"
  @user_image = "/assets/images/scissors.png"
  @moves=["rock","paper","scissors"]
  @computer_move = @moves.sample

    if @computer_move=="scissors"
      @result="tied"
      @image="/assets/images/scissors.png"
      @label="label-warning"
    elsif @computer_move=="paper"
    @result= "won"
    @label="label-success"
    @image="/assets/images/paper.png"
  else
    @result="lost"
    @label="label-danger"
    @image="/assets/images/rock.png"
end

render("rps.html.erb")
end
end
