class GameController < ApplicationController
  def default
    render 'default'
  end
# methods for each player move
  def playrock
    @user_move="rock"
@user_image= "/assets/images/rock.png"
    @moves=["rock","paper", "scissors"]
    @comp_move=@moves.sample
    if @comp_move=="rock"
      @result=="tied"
      @image="/assets/images/rock.png"
      @label="label-warning"
      elsif @comp_move=="paper"
      @result= "lost"
      @label="label-danger"
      @image="/assets/images/paper.png"
    else
      @result="won"
      @label="label-success"
      @image="/assets/images/scissors.png"
  end
render("rps_rcav.html.erb")
  end

  def playpaper
  @user_move = "paper"
  @user_image= "/assets/images/paper.png"
  @moves=["rock","paper","scissors"]
  @comp_move = @moves.sample

    if @comp_move=="paper"
      @result="tied"
      @image="/assets/images/paper.png"
      @label="label-warning"
    elsif @comp_move=="rock"
    @result= "won"
    @label="label-success"
    @image="/assets/images/rock.png"
  else
    @result="lost"
    @label="label-danger"
    @image="/assets/images/scissors.png"
end

render("rps_rcav.html.erb")
end

def playscissors
  @user_move = "scissors"
  @user_image = "/assets/images/scissors.png"
  @moves=["rock","paper","scissors"]
  @comp_move = @moves.sample

    if @comp_move=="scissors"
      @result="tied"
      @image="/assets/images/scissors.png"
      @label="label-warning"
    elsif @comp_move=="paper"
    @result= "won"
    @label="label-success"
    @image="/assets/images/paper.png"
  else
    @result="lost"
    @label="label-danger"
    @image="/assets/images/rock.png"
end

render("rps_rcav.html.erb")
end

end
