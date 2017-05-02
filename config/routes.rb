Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get("/flexible/square/:number", { :controller => "operations", :action => "square"})

  get("/flexible/square_root/:number", { :controller => "operations", :action => "square_root"})

  get("/flexible/payment/:basis_points/:number_of_years/:present_value", { :controller => "operations", :action => "payment"})

  get("/flexible/random/:minimum/:maximum", { :controller => "operations", :action => "random" })

  get("/square/new", { :controller => "operations", :action => "square_new"})

  get("square/results", { :controller => "operations", :action => "square_results"})

  get("square_root/new", { :controller => "operations", :action => "square_root_new" })

  get("square_root/results", { :controller => "operations", :action => "square_root_results"})
end
