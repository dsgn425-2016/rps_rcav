class GameController < ApplicationController



  def stone
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      render("rr.html.erb")
    elsif @computer_move == "paper"
      render("rp.html.erb")
    else
      render("rs.html.erb")
    end
  end

  def notepad
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      render("pr.html.erb")
    elsif @computer_move == "paper"
      render("pp.html.erb")
    else
      render("ps.html.erb")
    end
  end

  def cutters
    @computer_move = ["rock", "paper", "scissors"].sample

    if @computer_move == "rock"
      render("sr.html.erb")
    elsif @computer_move == "paper"
      render("sp.html.erb")
    else
      render("ss.html.erb")
    end
  end






end
