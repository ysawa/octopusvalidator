OctopusValidator::Application.routes.draw do

  resources :validators

  get 'validate', to: 'validators#validate', as: :validate

  root to: "home#index"

end

ActionDispatch::Routing::Translator.translate_from_file('config/locales/routes.yml')
