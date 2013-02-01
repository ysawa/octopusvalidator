OctopusValidator::Application.routes.draw do

  resources :validators

  get 'validate', to: 'validators#validate', as: :validate

  root to: "home#index"

end
