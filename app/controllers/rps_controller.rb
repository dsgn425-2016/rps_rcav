class RpsController < ApplicationController

  def rock
    rpsArray = Array[:rock, :paper, :scissors]
    @user = :rock
    @comp = rpsArray[rand(3)]
    if(@comp == :rock)
      @outcome = :tied
    elsif(@comp == :paper)
      @outcome = :lost
    elsif(@comp == :scissors)
      @outcome = :won
    end
    render("rock.html.erb")
  end

  def paper
    rpsArray = Array[:rock, :paper, :scissors]
    @user = :paper
    @comp = rpsArray[rand(3)]
    if(@comp == :rock)
      @outcome = :won
    elsif(@comp == :paper)
      @outcome = :tied
    elsif(@comp == :scissors)
      @outcome = :lost
    end
    render("paper.html.erb")
  end
  
  def scissors
    rpsArray = Array[:rock, :paper, :scissors]
    @user = :scissors
    @comp = rpsArray[rand(3)]
    if(@comp == :rock)
      @outcome = :lost
    elsif(@comp == :paper)
      @outcome = :won
    elsif(@comp == :scissors)
      @outcome = :tied
    end
    render("scissors.html.erb")
  end
end
