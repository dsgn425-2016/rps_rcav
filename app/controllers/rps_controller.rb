class RpsController < ApplicationController



  def rock
    @user_move="rock"
@comp_move=["rock","paper","scissors"].sample
if @comp_move="paper" then @result="lose"
elsif @comp_move ="scissors" then @result="win"
else puts "tie"
end
    render("rock.html.erb")
end

def paper
  @user_move="paper"
@comp_move=["rock","paper","scissors"].sample
if @comp_move="scissors" then @result="lose"
elsif @comp_move ="rock" then @result="win"
else puts "tie"
end
  render("paper.html.erb")
end
def scissors
  @user_move="scissors"
@comp_move=["rock","paper","scissors"].sample
if @comp_move="rock" then @result="lose"
elsif @comp_move ="paper" then @result="win"
else puts "tie"
end
  render("scissors.html.erb")
end
end
