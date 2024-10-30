Rails.application.routes.draw do
get("/", {:controller => "site", :action => "home"})

get("/dice/5/4", {:controller => "site", :action => "five_four"})

get("/dice/2/6", {:controller => "site", :action => "two_six"})

get("/dice/1/20", {:controller => "site", :action => "one_twenty"})

get("/dice/2/10", {:controller => "site", :action => "two_ten"})


get("/dice/:number_of_dice/:how_many_sides", {:controller => "site", :action => "flexible"})
end
