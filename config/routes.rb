Rails.application.routes.draw do
  get 'about', to: 'static#about'

  get 'contact', to: 'static#contact'

  resources :restaurants #add GET POST PATCH PUT DELETE
end
