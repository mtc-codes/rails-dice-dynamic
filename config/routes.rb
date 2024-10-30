Rails.application.routes.draw do
get("/", {controller => "site", :action => "home"})
end
