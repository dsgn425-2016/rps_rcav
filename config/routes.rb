Rails.application.routes.draw do

#landing page set to rock
get("/", { :controller => "choice", :action => "rock"})

get("/rock", { :controller => "choice", :action => "rock"})

get("/paper", { :controller => "choice", :action => "paper"})

get("/scissors", { :controller => "choice", :action => "scissors"})

end
