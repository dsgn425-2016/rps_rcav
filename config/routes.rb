Rails.application.routes.draw do

#default
  get("", { :controller => "game", :action => "playrock" })
#Rock
get("/rock", { :controller => "game", :action => "playrock" })
#Paper
get("/paper", { :controller => "game", :action => "playpaper" })
#Scissors
get("/scissors", { :controller => "game", :action => "playscissors" })
end
