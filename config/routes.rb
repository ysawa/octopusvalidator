OctopusValidator::Application.routes.draw do

  resources :validators


  root to: "home#index"

end
