Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/flexible/square/:number", { :controller => "operations", :action => "square"})

  get("/flexible/square_root/:number", { :controller => "operations", :action => "square_root"})
end
