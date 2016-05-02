class SessionsController < ApplicationController
  def application
    render 'application'
  end

  def rock
    render 'rock'
  end

  def paper
    render 'paper'
  end

  def scissors
    render 'scissors'
  end
end
